import 'package:built_redux/built_redux.dart';
import 'package:test_built_redux/logic/models/user.dart';

part 'action.g.dart';

abstract class CounterActions extends ReduxActions {
  ActionDispatcher<int> get increment;
  ActionDispatcher<int> get decrement;
  ActionDispatcher<void> get getUsers;
  ActionDispatcher<List<User?>> get setUserList;

  CounterActions._();
  factory CounterActions() => _$CounterActions();
}
