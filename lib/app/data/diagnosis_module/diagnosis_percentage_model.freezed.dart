// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diagnosis_percentage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiagnosisPercentageModel _$DiagnosisPercentageModelFromJson(
    Map<String, dynamic> json) {
  return _DiagnosisPercentageModel.fromJson(json);
}

/// @nodoc
mixin _$DiagnosisPercentageModel {
  double get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiagnosisPercentageModelCopyWith<DiagnosisPercentageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisPercentageModelCopyWith<$Res> {
  factory $DiagnosisPercentageModelCopyWith(DiagnosisPercentageModel value,
          $Res Function(DiagnosisPercentageModel) then) =
      _$DiagnosisPercentageModelCopyWithImpl<$Res>;
  $Res call({double percentage});
}

/// @nodoc
class _$DiagnosisPercentageModelCopyWithImpl<$Res>
    implements $DiagnosisPercentageModelCopyWith<$Res> {
  _$DiagnosisPercentageModelCopyWithImpl(this._value, this._then);

  final DiagnosisPercentageModel _value;
  // ignore: unused_field
  final $Res Function(DiagnosisPercentageModel) _then;

  @override
  $Res call({
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DiagnosisPercentageModelCopyWith<$Res>
    implements $DiagnosisPercentageModelCopyWith<$Res> {
  factory _$DiagnosisPercentageModelCopyWith(_DiagnosisPercentageModel value,
          $Res Function(_DiagnosisPercentageModel) then) =
      __$DiagnosisPercentageModelCopyWithImpl<$Res>;
  @override
  $Res call({double percentage});
}

/// @nodoc
class __$DiagnosisPercentageModelCopyWithImpl<$Res>
    extends _$DiagnosisPercentageModelCopyWithImpl<$Res>
    implements _$DiagnosisPercentageModelCopyWith<$Res> {
  __$DiagnosisPercentageModelCopyWithImpl(_DiagnosisPercentageModel _value,
      $Res Function(_DiagnosisPercentageModel) _then)
      : super(_value, (v) => _then(v as _DiagnosisPercentageModel));

  @override
  _DiagnosisPercentageModel get _value =>
      super._value as _DiagnosisPercentageModel;

  @override
  $Res call({
    Object? percentage = freezed,
  }) {
    return _then(_DiagnosisPercentageModel(
      percentage: percentage == freezed
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiagnosisPercentageModel implements _DiagnosisPercentageModel {
  _$_DiagnosisPercentageModel({required this.percentage});

  factory _$_DiagnosisPercentageModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiagnosisPercentageModelFromJson(json);

  @override
  final double percentage;

  @override
  String toString() {
    return 'DiagnosisPercentageModel(percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiagnosisPercentageModel &&
            const DeepCollectionEquality()
                .equals(other.percentage, percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(percentage));

  @JsonKey(ignore: true)
  @override
  _$DiagnosisPercentageModelCopyWith<_DiagnosisPercentageModel> get copyWith =>
      __$DiagnosisPercentageModelCopyWithImpl<_DiagnosisPercentageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiagnosisPercentageModelToJson(this);
  }
}

abstract class _DiagnosisPercentageModel implements DiagnosisPercentageModel {
  factory _DiagnosisPercentageModel({required final double percentage}) =
      _$_DiagnosisPercentageModel;

  factory _DiagnosisPercentageModel.fromJson(Map<String, dynamic> json) =
      _$_DiagnosisPercentageModel.fromJson;

  @override
  double get percentage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiagnosisPercentageModelCopyWith<_DiagnosisPercentageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
