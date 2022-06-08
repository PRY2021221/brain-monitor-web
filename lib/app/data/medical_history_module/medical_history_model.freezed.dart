// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medical_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MedicalHistoryModel _$MedicalHistoryModelFromJson(Map<String, dynamic> json) {
  return _MedicalHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$MedicalHistoryModel {
  int get medicalHistoryId => throw _privateConstructorUsedError;
  String get patientDni => throw _privateConstructorUsedError;
  int get doctorId => throw _privateConstructorUsedError;
  String get patientName => throw _privateConstructorUsedError;
  String get prioritization => throw _privateConstructorUsedError;
  DateTime get registeredDate => throw _privateConstructorUsedError;
  int get patientAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MedicalHistoryModelCopyWith<MedicalHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicalHistoryModelCopyWith<$Res> {
  factory $MedicalHistoryModelCopyWith(
          MedicalHistoryModel value, $Res Function(MedicalHistoryModel) then) =
      _$MedicalHistoryModelCopyWithImpl<$Res>;
  $Res call(
      {int medicalHistoryId,
      String patientDni,
      int doctorId,
      String patientName,
      String prioritization,
      DateTime registeredDate,
      int patientAge});
}

/// @nodoc
class _$MedicalHistoryModelCopyWithImpl<$Res>
    implements $MedicalHistoryModelCopyWith<$Res> {
  _$MedicalHistoryModelCopyWithImpl(this._value, this._then);

  final MedicalHistoryModel _value;
  // ignore: unused_field
  final $Res Function(MedicalHistoryModel) _then;

  @override
  $Res call({
    Object? medicalHistoryId = freezed,
    Object? patientDni = freezed,
    Object? doctorId = freezed,
    Object? patientName = freezed,
    Object? prioritization = freezed,
    Object? registeredDate = freezed,
    Object? patientAge = freezed,
  }) {
    return _then(_value.copyWith(
      medicalHistoryId: medicalHistoryId == freezed
          ? _value.medicalHistoryId
          : medicalHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      patientDni: patientDni == freezed
          ? _value.patientDni
          : patientDni // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      patientName: patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      prioritization: prioritization == freezed
          ? _value.prioritization
          : prioritization // ignore: cast_nullable_to_non_nullable
              as String,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientAge: patientAge == freezed
          ? _value.patientAge
          : patientAge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MedicalHistoryModelCopyWith<$Res>
    implements $MedicalHistoryModelCopyWith<$Res> {
  factory _$MedicalHistoryModelCopyWith(_MedicalHistoryModel value,
          $Res Function(_MedicalHistoryModel) then) =
      __$MedicalHistoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int medicalHistoryId,
      String patientDni,
      int doctorId,
      String patientName,
      String prioritization,
      DateTime registeredDate,
      int patientAge});
}

/// @nodoc
class __$MedicalHistoryModelCopyWithImpl<$Res>
    extends _$MedicalHistoryModelCopyWithImpl<$Res>
    implements _$MedicalHistoryModelCopyWith<$Res> {
  __$MedicalHistoryModelCopyWithImpl(
      _MedicalHistoryModel _value, $Res Function(_MedicalHistoryModel) _then)
      : super(_value, (v) => _then(v as _MedicalHistoryModel));

  @override
  _MedicalHistoryModel get _value => super._value as _MedicalHistoryModel;

  @override
  $Res call({
    Object? medicalHistoryId = freezed,
    Object? patientDni = freezed,
    Object? doctorId = freezed,
    Object? patientName = freezed,
    Object? prioritization = freezed,
    Object? registeredDate = freezed,
    Object? patientAge = freezed,
  }) {
    return _then(_MedicalHistoryModel(
      medicalHistoryId: medicalHistoryId == freezed
          ? _value.medicalHistoryId
          : medicalHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      patientDni: patientDni == freezed
          ? _value.patientDni
          : patientDni // ignore: cast_nullable_to_non_nullable
              as String,
      doctorId: doctorId == freezed
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int,
      patientName: patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      prioritization: prioritization == freezed
          ? _value.prioritization
          : prioritization // ignore: cast_nullable_to_non_nullable
              as String,
      registeredDate: registeredDate == freezed
          ? _value.registeredDate
          : registeredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      patientAge: patientAge == freezed
          ? _value.patientAge
          : patientAge // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MedicalHistoryModel implements _MedicalHistoryModel {
  _$_MedicalHistoryModel(
      {required this.medicalHistoryId,
      required this.patientDni,
      required this.doctorId,
      required this.patientName,
      required this.prioritization,
      required this.registeredDate,
      required this.patientAge});

  factory _$_MedicalHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_MedicalHistoryModelFromJson(json);

  @override
  final int medicalHistoryId;
  @override
  final String patientDni;
  @override
  final int doctorId;
  @override
  final String patientName;
  @override
  final String prioritization;
  @override
  final DateTime registeredDate;
  @override
  final int patientAge;

  @override
  String toString() {
    return 'MedicalHistoryModel(medicalHistoryId: $medicalHistoryId, patientDni: $patientDni, doctorId: $doctorId, patientName: $patientName, prioritization: $prioritization, registeredDate: $registeredDate, patientAge: $patientAge)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MedicalHistoryModel &&
            const DeepCollectionEquality()
                .equals(other.medicalHistoryId, medicalHistoryId) &&
            const DeepCollectionEquality()
                .equals(other.patientDni, patientDni) &&
            const DeepCollectionEquality().equals(other.doctorId, doctorId) &&
            const DeepCollectionEquality()
                .equals(other.patientName, patientName) &&
            const DeepCollectionEquality()
                .equals(other.prioritization, prioritization) &&
            const DeepCollectionEquality()
                .equals(other.registeredDate, registeredDate) &&
            const DeepCollectionEquality()
                .equals(other.patientAge, patientAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(medicalHistoryId),
      const DeepCollectionEquality().hash(patientDni),
      const DeepCollectionEquality().hash(doctorId),
      const DeepCollectionEquality().hash(patientName),
      const DeepCollectionEquality().hash(prioritization),
      const DeepCollectionEquality().hash(registeredDate),
      const DeepCollectionEquality().hash(patientAge));

  @JsonKey(ignore: true)
  @override
  _$MedicalHistoryModelCopyWith<_MedicalHistoryModel> get copyWith =>
      __$MedicalHistoryModelCopyWithImpl<_MedicalHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MedicalHistoryModelToJson(this);
  }
}

abstract class _MedicalHistoryModel implements MedicalHistoryModel {
  factory _MedicalHistoryModel(
      {required final int medicalHistoryId,
      required final String patientDni,
      required final int doctorId,
      required final String patientName,
      required final String prioritization,
      required final DateTime registeredDate,
      required final int patientAge}) = _$_MedicalHistoryModel;

  factory _MedicalHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_MedicalHistoryModel.fromJson;

  @override
  int get medicalHistoryId => throw _privateConstructorUsedError;
  @override
  String get patientDni => throw _privateConstructorUsedError;
  @override
  int get doctorId => throw _privateConstructorUsedError;
  @override
  String get patientName => throw _privateConstructorUsedError;
  @override
  String get prioritization => throw _privateConstructorUsedError;
  @override
  DateTime get registeredDate => throw _privateConstructorUsedError;
  @override
  int get patientAge => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MedicalHistoryModelCopyWith<_MedicalHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
