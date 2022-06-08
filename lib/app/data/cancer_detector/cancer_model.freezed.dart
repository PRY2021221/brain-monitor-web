// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cancer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancerModel _$CancerModelFromJson(Map<String, dynamic> json) {
  return _CancerModel.fromJson(json);
}

/// @nodoc
mixin _$CancerModel {
  double get confidence => throw _privateConstructorUsedError;
  @JsonKey(name: 'bounding_box')
  List<int> get boundingBox => throw _privateConstructorUsedError;
  @JsonKey(name: 'mask_vertices')
  List<List<List<int>>> get maskVertices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancerModelCopyWith<CancerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancerModelCopyWith<$Res> {
  factory $CancerModelCopyWith(
          CancerModel value, $Res Function(CancerModel) then) =
      _$CancerModelCopyWithImpl<$Res>;
  $Res call(
      {double confidence,
      @JsonKey(name: 'bounding_box') List<int> boundingBox,
      @JsonKey(name: 'mask_vertices') List<List<List<int>>> maskVertices});
}

/// @nodoc
class _$CancerModelCopyWithImpl<$Res> implements $CancerModelCopyWith<$Res> {
  _$CancerModelCopyWithImpl(this._value, this._then);

  final CancerModel _value;
  // ignore: unused_field
  final $Res Function(CancerModel) _then;

  @override
  $Res call({
    Object? confidence = freezed,
    Object? boundingBox = freezed,
    Object? maskVertices = freezed,
  }) {
    return _then(_value.copyWith(
      confidence: confidence == freezed
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      boundingBox: boundingBox == freezed
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as List<int>,
      maskVertices: maskVertices == freezed
          ? _value.maskVertices
          : maskVertices // ignore: cast_nullable_to_non_nullable
              as List<List<List<int>>>,
    ));
  }
}

/// @nodoc
abstract class _$CancerModelCopyWith<$Res>
    implements $CancerModelCopyWith<$Res> {
  factory _$CancerModelCopyWith(
          _CancerModel value, $Res Function(_CancerModel) then) =
      __$CancerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double confidence,
      @JsonKey(name: 'bounding_box') List<int> boundingBox,
      @JsonKey(name: 'mask_vertices') List<List<List<int>>> maskVertices});
}

/// @nodoc
class __$CancerModelCopyWithImpl<$Res> extends _$CancerModelCopyWithImpl<$Res>
    implements _$CancerModelCopyWith<$Res> {
  __$CancerModelCopyWithImpl(
      _CancerModel _value, $Res Function(_CancerModel) _then)
      : super(_value, (v) => _then(v as _CancerModel));

  @override
  _CancerModel get _value => super._value as _CancerModel;

  @override
  $Res call({
    Object? confidence = freezed,
    Object? boundingBox = freezed,
    Object? maskVertices = freezed,
  }) {
    return _then(_CancerModel(
      confidence: confidence == freezed
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      boundingBox: boundingBox == freezed
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as List<int>,
      maskVertices: maskVertices == freezed
          ? _value.maskVertices
          : maskVertices // ignore: cast_nullable_to_non_nullable
              as List<List<List<int>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CancerModel implements _CancerModel {
  _$_CancerModel(
      {required this.confidence,
      @JsonKey(name: 'bounding_box')
          required final List<int> boundingBox,
      @JsonKey(name: 'mask_vertices')
          required final List<List<List<int>>> maskVertices})
      : _boundingBox = boundingBox,
        _maskVertices = maskVertices;

  factory _$_CancerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CancerModelFromJson(json);

  @override
  final double confidence;
  @JsonKey(name: 'bounding_box')
  final List<int> _boundingBox;
  @override
  @JsonKey(name: 'bounding_box')
  List<int> get boundingBox {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boundingBox);
  }

  @JsonKey(name: 'mask_vertices')
  final List<List<List<int>>> _maskVertices;
  @override
  @JsonKey(name: 'mask_vertices')
  List<List<List<int>>> get maskVertices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maskVertices);
  }

  @override
  String toString() {
    return 'CancerModel(confidence: $confidence, boundingBox: $boundingBox, maskVertices: $maskVertices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CancerModel &&
            const DeepCollectionEquality()
                .equals(other.confidence, confidence) &&
            const DeepCollectionEquality()
                .equals(other.boundingBox, boundingBox) &&
            const DeepCollectionEquality()
                .equals(other.maskVertices, maskVertices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(confidence),
      const DeepCollectionEquality().hash(boundingBox),
      const DeepCollectionEquality().hash(maskVertices));

  @JsonKey(ignore: true)
  @override
  _$CancerModelCopyWith<_CancerModel> get copyWith =>
      __$CancerModelCopyWithImpl<_CancerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CancerModelToJson(this);
  }
}

abstract class _CancerModel implements CancerModel {
  factory _CancerModel(
      {required final double confidence,
      @JsonKey(name: 'bounding_box')
          required final List<int> boundingBox,
      @JsonKey(name: 'mask_vertices')
          required final List<List<List<int>>> maskVertices}) = _$_CancerModel;

  factory _CancerModel.fromJson(Map<String, dynamic> json) =
      _$_CancerModel.fromJson;

  @override
  double get confidence => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'bounding_box')
  List<int> get boundingBox => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'mask_vertices')
  List<List<List<int>>> get maskVertices => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CancerModelCopyWith<_CancerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
