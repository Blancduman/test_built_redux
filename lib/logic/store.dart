import 'package:built_redux/built_redux.dart';
import 'package:test_built_redux/logic/state.dart';
import 'package:test_built_redux/logic/reducer.dart';
import 'package:test_built_redux/logic/action.dart';

Store<Counter, CounterBuilder, CounterActions> createStore() =>
    Store<Counter, CounterBuilder, CounterActions>(
      buildReducer().build(), // build returns a reducer function
      Counter(),
      CounterActions(),
      middleware: [
        buildMiddleware().build(),
      ],
    );
