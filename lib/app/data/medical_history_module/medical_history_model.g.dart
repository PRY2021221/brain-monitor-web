// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalHistoryModel _$$_MedicalHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalHistoryModel(
      medicalHistoryId: json['medicalHistoryId'] as int,
      patientDni: json['patientDni'] as String,
      doctorId: json['doctorId'] as int,
      patientName: json['patientName'] as String,
      prioritization: json['prioritization'] as String,
      registeredDate: DateTime.parse(json['registeredDate'] as String),
      patientAge: json['patientAge'] as int,
    );

Map<String, dynamic> _$$_MedicalHistoryModelToJson(
        _$_MedicalHistoryModel instance) =>
    <String, dynamic>{
      'medicalHistoryId': instance.medicalHistoryId,
      'patientDni': instance.patientDni,
      'doctorId': instance.doctorId,
      'patientName': instance.patientName,
      'prioritization': instance.prioritization,
      'registeredDate': instance.registeredDate.toIso8601String(),
      'patientAge': instance.patientAge,
    };
