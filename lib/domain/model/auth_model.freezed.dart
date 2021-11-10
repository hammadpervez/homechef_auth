// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'error':
      return AuthError.fromJson(json);
    case 'set':
      return UserModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$AuthModelTearOff {
  const _$AuthModelTearOff();

  AuthError error(String message) {
    return AuthError(
      message,
    );
  }

  UserModel set(
      {String? name,
      String? email,
      required String phone,
      required String password}) {
    return UserModel(
      name: name,
      email: email,
      phone: phone,
      password: password,
    );
  }

  AuthModel fromJson(Map<String, Object> json) {
    return AuthModel.fromJson(json);
  }
}

/// @nodoc
const $AuthModel = _$AuthModelTearOff();

/// @nodoc
mixin _$AuthModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(
            String? name, String? email, String phone, String password)
        set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(
            String? name, String? email, String phone, String password)?
        set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(
            String? name, String? email, String phone, String password)?
        set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthError value) error,
    required TResult Function(UserModel value) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthError value)? error,
    TResult Function(UserModel value)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthError value)? error,
    TResult Function(UserModel value)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res> implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  final AuthModel _value;
  // ignore: unused_field
  final $Res Function(AuthModel) _then;
}

/// @nodoc
abstract class $AuthErrorCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) then) =
      _$AuthErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res> extends _$AuthModelCopyWithImpl<$Res>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(AuthError _value, $Res Function(AuthError) _then)
      : super(_value, (v) => _then(v as AuthError));

  @override
  AuthError get _value => super._value as AuthError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthError with DiagnosticableTreeMixin implements AuthError {
  const _$AuthError(this.message);

  factory _$AuthError.fromJson(Map<String, dynamic> json) =>
      _$$AuthErrorFromJson(json);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthModel.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthModel.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $AuthErrorCopyWith<AuthError> get copyWith =>
      _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(
            String? name, String? email, String phone, String password)
        set,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(
            String? name, String? email, String phone, String password)?
        set,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(
            String? name, String? email, String phone, String password)?
        set,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthError value) error,
    required TResult Function(UserModel value) set,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthError value)? error,
    TResult Function(UserModel value)? set,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthError value)? error,
    TResult Function(UserModel value)? set,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class AuthError implements AuthModel {
  const factory AuthError(String message) = _$AuthError;

  factory AuthError.fromJson(Map<String, dynamic> json) = _$AuthError.fromJson;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthErrorCopyWith<AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call({String? name, String? email, String phone, String password});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> extends _$AuthModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(UserModel _value, $Res Function(UserModel) _then)
      : super(_value, (v) => _then(v as UserModel));

  @override
  UserModel get _value => super._value as UserModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(UserModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModel with DiagnosticableTreeMixin implements UserModel {
  const _$UserModel(
      {this.name, this.email, required this.phone, required this.password});

  factory _$UserModel.fromJson(Map<String, dynamic> json) =>
      _$$UserModelFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String phone;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthModel.set(name: $name, email: $email, phone: $phone, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthModel.set'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $UserModelCopyWith<UserModel> get copyWith =>
      _$UserModelCopyWithImpl<UserModel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
    required TResult Function(
            String? name, String? email, String phone, String password)
        set,
  }) {
    return set(name, email, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(
            String? name, String? email, String phone, String password)?
        set,
  }) {
    return set?.call(name, email, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    TResult Function(
            String? name, String? email, String phone, String password)?
        set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(name, email, phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthError value) error,
    required TResult Function(UserModel value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthError value)? error,
    TResult Function(UserModel value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthError value)? error,
    TResult Function(UserModel value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelToJson(this)..['runtimeType'] = 'set';
  }
}

abstract class UserModel implements AuthModel {
  const factory UserModel(
      {String? name,
      String? email,
      required String phone,
      required String password}) = _$UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) = _$UserModel.fromJson;

  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
