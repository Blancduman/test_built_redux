// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object?> serialize(Serializers serializers, User object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email, specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone, specifiedType: const FullType(String)),
      'website',
      serializers.serialize(object.website, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'website':
          result.website = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String website;

  factory _$User([void Function(UserBuilder)? updates]) => (new UserBuilder()..update(updates)).build();

  _$User._(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.website})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'User', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'User', 'name');
    BuiltValueNullFieldError.checkNotNull(username, 'User', 'username');
    BuiltValueNullFieldError.checkNotNull(email, 'User', 'email');
    BuiltValueNullFieldError.checkNotNull(phone, 'User', 'phone');
    BuiltValueNullFieldError.checkNotNull(website, 'User', 'website');
  }

  @override
  User rebuild(void Function(UserBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        name == other.name &&
        username == other.username &&
        email == other.email &&
        phone == other.phone &&
        website == other.website;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc(0, id.hashCode), name.hashCode), username.hashCode), email.hashCode), phone.hashCode),
        website.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('id', id)
          ..add('name', name)
          ..add('username', username)
          ..add('email', email)
          ..add('phone', phone)
          ..add('website', website))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  UserBuilder();

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _username = $v.username;
      _email = $v.email;
      _phone = $v.phone;
      _website = $v.website;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'User', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, 'User', 'name'),
            username: BuiltValueNullFieldError.checkNotNull(username, 'User', 'username'),
            email: BuiltValueNullFieldError.checkNotNull(email, 'User', 'email'),
            phone: BuiltValueNullFieldError.checkNotNull(phone, 'User', 'phone'),
            website: BuiltValueNullFieldError.checkNotNull(website, 'User', 'website'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
