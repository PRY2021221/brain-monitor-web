// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssignmentModel _$$_AssignmentModelFromJson(Map<String, dynamic> json) =>
    _$_AssignmentModel(
      id: json['id'] as int,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      prioritization: json['prioritization'] as String,
      requestStatus: json['requestStatus'] as String?,
      assignmentStatus: json['assignmentStatus'] as String,
      patientDni: json['patientDni'] as String?,
      patientName: json['patientName'] as String?,
    );

Map<String, dynamic> _$$_AssignmentModelToJson(_$_AssignmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'prioritization': instance.prioritization,
      'requestStatus': instance.requestStatus,
      'assignmentStatus': instance.assignmentStatus,
      'patientDni': instance.patientDni,
      'patientName': instance.patientName,
    };
