import 'package:built_value/built_value.dart';

import 'models/user.dart';

part 'state.g.dart';

abstract class Counter implements Built<Counter, CounterBuilder> {
  int get count;
  List<User?> get users;

  Counter._();
  factory Counter() => _$Counter._(count: 0, users: []);
}
