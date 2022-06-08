// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'treatment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TreatmentModel _$TreatmentModelFromJson(Map<String, dynamic> json) {
  return _TreatmentModel.fromJson(json);
}

/// @nodoc
mixin _$TreatmentModel {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get observation => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get treatmentName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreatmentModelCopyWith<TreatmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreatmentModelCopyWith<$Res> {
  factory $TreatmentModelCopyWith(
          TreatmentModel value, $Res Function(TreatmentModel) then) =
      _$TreatmentModelCopyWithImpl<$Res>;
  $Res call(
      {DateTime createdAt,
      String observation,
      String status,
      String treatmentName});
}

/// @nodoc
class _$TreatmentModelCopyWithImpl<$Res>
    implements $TreatmentModelCopyWith<$Res> {
  _$TreatmentModelCopyWithImpl(this._value, this._then);

  final TreatmentModel _value;
  // ignore: unused_field
  final $Res Function(TreatmentModel) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? observation = freezed,
    Object? status = freezed,
    Object? treatmentName = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observation: observation == freezed
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      treatmentName: treatmentName == freezed
          ? _value.treatmentName
          : treatmentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TreatmentModelCopyWith<$Res>
    implements $TreatmentModelCopyWith<$Res> {
  factory _$TreatmentModelCopyWith(
          _TreatmentModel value, $Res Function(_TreatmentModel) then) =
      __$TreatmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime createdAt,
      String observation,
      String status,
      String treatmentName});
}

/// @nodoc
class __$TreatmentModelCopyWithImpl<$Res>
    extends _$TreatmentModelCopyWithImpl<$Res>
    implements _$TreatmentModelCopyWith<$Res> {
  __$TreatmentModelCopyWithImpl(
      _TreatmentModel _value, $Res Function(_TreatmentModel) _then)
      : super(_value, (v) => _then(v as _TreatmentModel));

  @override
  _TreatmentModel get _value => super._value as _TreatmentModel;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? observation = freezed,
    Object? status = freezed,
    Object? treatmentName = freezed,
  }) {
    return _then(_TreatmentModel(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      observation: observation == freezed
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      treatmentName: treatmentName == freezed
          ? _value.treatmentName
          : treatmentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TreatmentModel implements _TreatmentModel {
  _$_TreatmentModel(
      {required this.createdAt,
      required this.observation,
      required this.status,
      required this.treatmentName});

  factory _$_TreatmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_TreatmentModelFromJson(json);

  @override
  final DateTime createdAt;
  @override
  final String observation;
  @override
  final String status;
  @override
  final String treatmentName;

  @override
  String toString() {
    return 'TreatmentModel(createdAt: $createdAt, observation: $observation, status: $status, treatmentName: $treatmentName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TreatmentModel &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.observation, observation) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.treatmentName, treatmentName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(observation),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(treatmentName));

  @JsonKey(ignore: true)
  @override
  _$TreatmentModelCopyWith<_TreatmentModel> get copyWith =>
      __$TreatmentModelCopyWithImpl<_TreatmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TreatmentModelToJson(this);
  }
}

abstract class _TreatmentModel implements TreatmentModel {
  factory _TreatmentModel(
      {required final DateTime createdAt,
      required final String observation,
      required final String status,
      required final String treatmentName}) = _$_TreatmentModel;

  factory _TreatmentModel.fromJson(Map<String, dynamic> json) =
      _$_TreatmentModel.fromJson;

  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  String get observation => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get treatmentName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TreatmentModelCopyWith<_TreatmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
