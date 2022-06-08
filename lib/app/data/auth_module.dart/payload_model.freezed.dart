// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payload_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PayloadModel _$PayloadModelFromJson(Map<String, dynamic> json) {
  return _PayloadModel.fromJson(json);
}

/// @nodoc
mixin _$PayloadModel {
  String get username => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadModelCopyWith<PayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadModelCopyWith<$Res> {
  factory $PayloadModelCopyWith(
          PayloadModel value, $Res Function(PayloadModel) then) =
      _$PayloadModelCopyWithImpl<$Res>;
  $Res call({String username, String role, int id});
}

/// @nodoc
class _$PayloadModelCopyWithImpl<$Res> implements $PayloadModelCopyWith<$Res> {
  _$PayloadModelCopyWithImpl(this._value, this._then);

  final PayloadModel _value;
  // ignore: unused_field
  final $Res Function(PayloadModel) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PayloadModelCopyWith<$Res>
    implements $PayloadModelCopyWith<$Res> {
  factory _$PayloadModelCopyWith(
          _PayloadModel value, $Res Function(_PayloadModel) then) =
      __$PayloadModelCopyWithImpl<$Res>;
  @override
  $Res call({String username, String role, int id});
}

/// @nodoc
class __$PayloadModelCopyWithImpl<$Res> extends _$PayloadModelCopyWithImpl<$Res>
    implements _$PayloadModelCopyWith<$Res> {
  __$PayloadModelCopyWithImpl(
      _PayloadModel _value, $Res Function(_PayloadModel) _then)
      : super(_value, (v) => _then(v as _PayloadModel));

  @override
  _PayloadModel get _value => super._value as _PayloadModel;

  @override
  $Res call({
    Object? username = freezed,
    Object? role = freezed,
    Object? id = freezed,
  }) {
    return _then(_PayloadModel(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PayloadModel implements _PayloadModel {
  _$_PayloadModel(
      {required this.username, required this.role, required this.id});

  factory _$_PayloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_PayloadModelFromJson(json);

  @override
  final String username;
  @override
  final String role;
  @override
  final int id;

  @override
  String toString() {
    return 'PayloadModel(username: $username, role: $role, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayloadModel &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$PayloadModelCopyWith<_PayloadModel> get copyWith =>
      __$PayloadModelCopyWithImpl<_PayloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayloadModelToJson(this);
  }
}

abstract class _PayloadModel implements PayloadModel {
  factory _PayloadModel(
      {required final String username,
      required final String role,
      required final int id}) = _$_PayloadModel;

  factory _PayloadModel.fromJson(Map<String, dynamic> json) =
      _$_PayloadModel.fromJson;

  @override
  String get username => throw _privateConstructorUsedError;
  @override
  String get role => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PayloadModelCopyWith<_PayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
