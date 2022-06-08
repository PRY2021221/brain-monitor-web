// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'output_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutputModel _$OutputModelFromJson(Map<String, dynamic> json) {
  return _OutputModel.fromJson(json);
}

/// @nodoc
mixin _$OutputModel {
  @JsonKey(name: 'Objects')
  List<CancerModel> get objects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutputModelCopyWith<OutputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutputModelCopyWith<$Res> {
  factory $OutputModelCopyWith(
          OutputModel value, $Res Function(OutputModel) then) =
      _$OutputModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'Objects') List<CancerModel> objects});
}

/// @nodoc
class _$OutputModelCopyWithImpl<$Res> implements $OutputModelCopyWith<$Res> {
  _$OutputModelCopyWithImpl(this._value, this._then);

  final OutputModel _value;
  // ignore: unused_field
  final $Res Function(OutputModel) _then;

  @override
  $Res call({
    Object? objects = freezed,
  }) {
    return _then(_value.copyWith(
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<CancerModel>,
    ));
  }
}

/// @nodoc
abstract class _$OutputModelCopyWith<$Res>
    implements $OutputModelCopyWith<$Res> {
  factory _$OutputModelCopyWith(
          _OutputModel value, $Res Function(_OutputModel) then) =
      __$OutputModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'Objects') List<CancerModel> objects});
}

/// @nodoc
class __$OutputModelCopyWithImpl<$Res> extends _$OutputModelCopyWithImpl<$Res>
    implements _$OutputModelCopyWith<$Res> {
  __$OutputModelCopyWithImpl(
      _OutputModel _value, $Res Function(_OutputModel) _then)
      : super(_value, (v) => _then(v as _OutputModel));

  @override
  _OutputModel get _value => super._value as _OutputModel;

  @override
  $Res call({
    Object? objects = freezed,
  }) {
    return _then(_OutputModel(
      objects: objects == freezed
          ? _value.objects
          : objects // ignore: cast_nullable_to_non_nullable
              as List<CancerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutputModel implements _OutputModel {
  _$_OutputModel(
      {@JsonKey(name: 'Objects') required final List<CancerModel> objects})
      : _objects = objects;

  factory _$_OutputModel.fromJson(Map<String, dynamic> json) =>
      _$$_OutputModelFromJson(json);

  @JsonKey(name: 'Objects')
  final List<CancerModel> _objects;
  @override
  @JsonKey(name: 'Objects')
  List<CancerModel> get objects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_objects);
  }

  @override
  String toString() {
    return 'OutputModel(objects: $objects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OutputModel &&
            const DeepCollectionEquality().equals(other.objects, objects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(objects));

  @JsonKey(ignore: true)
  @override
  _$OutputModelCopyWith<_OutputModel> get copyWith =>
      __$OutputModelCopyWithImpl<_OutputModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OutputModelToJson(this);
  }
}

abstract class _OutputModel implements OutputModel {
  factory _OutputModel(
      {@JsonKey(name: 'Objects')
          required final List<CancerModel> objects}) = _$_OutputModel;

  factory _OutputModel.fromJson(Map<String, dynamic> json) =
      _$_OutputModel.fromJson;

  @override
  @JsonKey(name: 'Objects')
  List<CancerModel> get objects => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutputModelCopyWith<_OutputModel> get copyWith =>
      throw _privateConstructorUsedError;
}
