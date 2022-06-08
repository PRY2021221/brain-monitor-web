// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assignment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssignmentModel _$AssignmentModelFromJson(Map<String, dynamic> json) {
  return _AssignmentModel.fromJson(json);
}

/// @nodoc
mixin _$AssignmentModel {
  int get id => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get prioritization => throw _privateConstructorUsedError;
  String? get requestStatus => throw _privateConstructorUsedError;
  String get assignmentStatus => throw _privateConstructorUsedError;
  String? get patientDni => throw _privateConstructorUsedError;
  String? get patientName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssignmentModelCopyWith<AssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentModelCopyWith<$Res> {
  factory $AssignmentModelCopyWith(
          AssignmentModel value, $Res Function(AssignmentModel) then) =
      _$AssignmentModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      DateTime? updatedAt,
      DateTime? createdAt,
      String prioritization,
      String? requestStatus,
      String assignmentStatus,
      String? patientDni,
      String? patientName});
}

/// @nodoc
class _$AssignmentModelCopyWithImpl<$Res>
    implements $AssignmentModelCopyWith<$Res> {
  _$AssignmentModelCopyWithImpl(this._value, this._then);

  final AssignmentModel _value;
  // ignore: unused_field
  final $Res Function(AssignmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? prioritization = freezed,
    Object? requestStatus = freezed,
    Object? assignmentStatus = freezed,
    Object? patientDni = freezed,
    Object? patientName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prioritization: prioritization == freezed
          ? _value.prioritization
          : prioritization // ignore: cast_nullable_to_non_nullable
              as String,
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignmentStatus: assignmentStatus == freezed
          ? _value.assignmentStatus
          : assignmentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      patientDni: patientDni == freezed
          ? _value.patientDni
          : patientDni // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AssignmentModelCopyWith<$Res>
    implements $AssignmentModelCopyWith<$Res> {
  factory _$AssignmentModelCopyWith(
          _AssignmentModel value, $Res Function(_AssignmentModel) then) =
      __$AssignmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      DateTime? updatedAt,
      DateTime? createdAt,
      String prioritization,
      String? requestStatus,
      String assignmentStatus,
      String? patientDni,
      String? patientName});
}

/// @nodoc
class __$AssignmentModelCopyWithImpl<$Res>
    extends _$AssignmentModelCopyWithImpl<$Res>
    implements _$AssignmentModelCopyWith<$Res> {
  __$AssignmentModelCopyWithImpl(
      _AssignmentModel _value, $Res Function(_AssignmentModel) _then)
      : super(_value, (v) => _then(v as _AssignmentModel));

  @override
  _AssignmentModel get _value => super._value as _AssignmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? prioritization = freezed,
    Object? requestStatus = freezed,
    Object? assignmentStatus = freezed,
    Object? patientDni = freezed,
    Object? patientName = freezed,
  }) {
    return _then(_AssignmentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      prioritization: prioritization == freezed
          ? _value.prioritization
          : prioritization // ignore: cast_nullable_to_non_nullable
              as String,
      requestStatus: requestStatus == freezed
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      assignmentStatus: assignmentStatus == freezed
          ? _value.assignmentStatus
          : assignmentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      patientDni: patientDni == freezed
          ? _value.patientDni
          : patientDni // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssignmentModel implements _AssignmentModel {
  _$_AssignmentModel(
      {required this.id,
      required this.updatedAt,
      required this.createdAt,
      required this.prioritization,
      required this.requestStatus,
      required this.assignmentStatus,
      required this.patientDni,
      required this.patientName});

  factory _$_AssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssignmentModelFromJson(json);

  @override
  final int id;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? createdAt;
  @override
  final String prioritization;
  @override
  final String? requestStatus;
  @override
  final String assignmentStatus;
  @override
  final String? patientDni;
  @override
  final String? patientName;

  @override
  String toString() {
    return 'AssignmentModel(id: $id, updatedAt: $updatedAt, createdAt: $createdAt, prioritization: $prioritization, requestStatus: $requestStatus, assignmentStatus: $assignmentStatus, patientDni: $patientDni, patientName: $patientName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AssignmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.prioritization, prioritization) &&
            const DeepCollectionEquality()
                .equals(other.requestStatus, requestStatus) &&
            const DeepCollectionEquality()
                .equals(other.assignmentStatus, assignmentStatus) &&
            const DeepCollectionEquality()
                .equals(other.patientDni, patientDni) &&
            const DeepCollectionEquality()
                .equals(other.patientName, patientName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(prioritization),
      const DeepCollectionEquality().hash(requestStatus),
      const DeepCollectionEquality().hash(assignmentStatus),
      const DeepCollectionEquality().hash(patientDni),
      const DeepCollectionEquality().hash(patientName));

  @JsonKey(ignore: true)
  @override
  _$AssignmentModelCopyWith<_AssignmentModel> get copyWith =>
      __$AssignmentModelCopyWithImpl<_AssignmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssignmentModelToJson(this);
  }
}

abstract class _AssignmentModel implements AssignmentModel {
  factory _AssignmentModel(
      {required final int id,
      required final DateTime? updatedAt,
      required final DateTime? createdAt,
      required final String prioritization,
      required final String? requestStatus,
      required final String assignmentStatus,
      required final String? patientDni,
      required final String? patientName}) = _$_AssignmentModel;

  factory _AssignmentModel.fromJson(Map<String, dynamic> json) =
      _$_AssignmentModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  String get prioritization => throw _privateConstructorUsedError;
  @override
  String? get requestStatus => throw _privateConstructorUsedError;
  @override
  String get assignmentStatus => throw _privateConstructorUsedError;
  @override
  String? get patientDni => throw _privateConstructorUsedError;
  @override
  String? get patientName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AssignmentModelCopyWith<_AssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
