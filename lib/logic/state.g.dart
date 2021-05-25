// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Counter extends Counter {
  @override
  final int count;
  @override
  final List<User?> users;

  factory _$Counter([void Function(CounterBuilder)? updates]) => (new CounterBuilder()..update(updates)).build();

  _$Counter._({required this.count, required this.users}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'Counter', 'count');
    BuiltValueNullFieldError.checkNotNull(users, 'Counter', 'users');
  }

  @override
  Counter rebuild(void Function(CounterBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  CounterBuilder toBuilder() => new CounterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Counter && count == other.count && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Counter')..add('count', count)..add('users', users)).toString();
  }
}

class CounterBuilder implements Builder<Counter, CounterBuilder> {
  _$Counter? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  List<User?>? _users;
  List<User?>? get users => _$this._users;
  set users(List<User?>? users) => _$this._users = users;

  CounterBuilder();

  CounterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _users = $v.users;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Counter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Counter;
  }

  @override
  void update(void Function(CounterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Counter build() {
    final _$result = _$v ??
        new _$Counter._(
            count: BuiltValueNullFieldError.checkNotNull(count, 'Counter', 'count'),
            users: BuiltValueNullFieldError.checkNotNull(users, 'Counter', 'users'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
