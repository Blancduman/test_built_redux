// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$CounterActions extends CounterActions {
  factory _$CounterActions() => _$CounterActions._();
  _$CounterActions._() : super._();

  final increment = ActionDispatcher<int>('CounterActions-increment');
  final decrement = ActionDispatcher<int>('CounterActions-decrement');
  final getUsers = ActionDispatcher<void>('CounterActions-getUsers');
  final setUserList = ActionDispatcher<List<User?>>('CounterActions-setUserList');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    increment.setDispatcher(dispatcher);
    decrement.setDispatcher(dispatcher);
    getUsers.setDispatcher(dispatcher);
    setUserList.setDispatcher(dispatcher);
  }
}

class CounterActionsNames {
  static final increment = ActionName<int>('CounterActions-increment');
  static final decrement = ActionName<int>('CounterActions-decrement');
  static final getUsers = ActionName<void>('CounterActions-getUsers');
  static final setUserList = ActionName<List<User?>>('CounterActions-setUserList');
}
