import 'dart:convert';

import 'package:built_redux/built_redux.dart';
import 'package:test_built_redux/logic/models/user.dart';
import 'package:test_built_redux/logic/state.dart';
import 'package:test_built_redux/logic/action.dart';
import 'package:http/http.dart' as http;
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:test_built_redux/logic/models/serializers.dart';

Future<http.Response> fetchUsers(String url) {
  return http.get(Uri.parse(url));
}

void increment(Counter state, Action<int> action, CounterBuilder builder) =>
    builder.count = state.count + action.payload;

void decrement(Counter state, Action<int> action, CounterBuilder builder) =>
    builder.count = state.count + action.payload;

void getUsers(MiddlewareApi<Counter, CounterBuilder, CounterActions> api, ActionHandler next, Action<void> action) {
  fetchUsers('https://jsonplaceholder.typicode.com/users')
    .then((value) => (json.decode(value.body) as List).map((e) => serializers.deserializeWith(User.serializer, e)).toList())
    .then((value) => api.actions.setUserList(value));
}

void setUserList(Counter state, Action<List<User?>> action, CounterBuilder builder) => builder.users = action.payload;

ReducerBuilder<Counter, CounterBuilder> buildReducer() => ReducerBuilder<Counter, CounterBuilder>()
  ..add(CounterActionsNames.increment, increment)
  ..add(CounterActionsNames.decrement, decrement)
  // ..add(CounterActionsNames.getUsers, getUsers)
  ..add(CounterActionsNames.setUserList, setUserList);


MiddlewareBuilder<Counter, CounterBuilder, CounterActions> buildMiddleware() =>
    MiddlewareBuilder<Counter, CounterBuilder, CounterActions>()
    ..add(CounterActionsNames.getUsers, getUsers);