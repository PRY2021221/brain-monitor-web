// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TreatmentModel _$$_TreatmentModelFromJson(Map<String, dynamic> json) =>
    _$_TreatmentModel(
      createdAt: DateTime.parse(json['createdAt'] as String),
      observation: json['observation'] as String,
      status: json['status'] as String,
      treatmentName: json['treatmentName'] as String,
    );

Map<String, dynamic> _$$_TreatmentModelToJson(_$_TreatmentModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'observation': instance.observation,
      'status': instance.status,
      'treatmentName': instance.treatmentName,
    };
