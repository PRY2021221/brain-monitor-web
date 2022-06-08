// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ubigeo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UbigeoModel _$UbigeoModelFromJson(Map<String, dynamic> json) {
  return _UbigeoModel.fromJson(json);
}

/// @nodoc
mixin _$UbigeoModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UbigeoModelCopyWith<UbigeoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UbigeoModelCopyWith<$Res> {
  factory $UbigeoModelCopyWith(
          UbigeoModel value, $Res Function(UbigeoModel) then) =
      _$UbigeoModelCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$UbigeoModelCopyWithImpl<$Res> implements $UbigeoModelCopyWith<$Res> {
  _$UbigeoModelCopyWithImpl(this._value, this._then);

  final UbigeoModel _value;
  // ignore: unused_field
  final $Res Function(UbigeoModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UbigeoModelCopyWith<$Res>
    implements $UbigeoModelCopyWith<$Res> {
  factory _$UbigeoModelCopyWith(
          _UbigeoModel value, $Res Function(_UbigeoModel) then) =
      __$UbigeoModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$UbigeoModelCopyWithImpl<$Res> extends _$UbigeoModelCopyWithImpl<$Res>
    implements _$UbigeoModelCopyWith<$Res> {
  __$UbigeoModelCopyWithImpl(
      _UbigeoModel _value, $Res Function(_UbigeoModel) _then)
      : super(_value, (v) => _then(v as _UbigeoModel));

  @override
  _UbigeoModel get _value => super._value as _UbigeoModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_UbigeoModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UbigeoModel implements _UbigeoModel {
  _$_UbigeoModel({required this.id, required this.name});

  factory _$_UbigeoModel.fromJson(Map<String, dynamic> json) =>
      _$$_UbigeoModelFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'UbigeoModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UbigeoModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$UbigeoModelCopyWith<_UbigeoModel> get copyWith =>
      __$UbigeoModelCopyWithImpl<_UbigeoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UbigeoModelToJson(this);
  }
}

abstract class _UbigeoModel implements UbigeoModel {
  factory _UbigeoModel({required final String id, required final String name}) =
      _$_UbigeoModel;

  factory _UbigeoModel.fromJson(Map<String, dynamic> json) =
      _$_UbigeoModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UbigeoModelCopyWith<_UbigeoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
