// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'magnetic_resonance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MagneticResonanceModel _$$_MagneticResonanceModelFromJson(
        Map<String, dynamic> json) =>
    _$_MagneticResonanceModel(
      createdAt: DateTime.parse(json['createdAt'] as String),
      filename: json['filename'] as String,
      medicalHistoryId: json['medicalHistoryId'] as int,
      resonanceAreaName: json['resonanceAreaName'] as String,
      resonanceImageLink: json['resonanceImageLink'] as String,
      status: json['status'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_MagneticResonanceModelToJson(
        _$_MagneticResonanceModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'filename': instance.filename,
      'medicalHistoryId': instance.medicalHistoryId,
      'resonanceAreaName': instance.resonanceAreaName,
      'resonanceImageLink': instance.resonanceImageLink,
      'status': instance.status,
      'id': instance.id,
    };
