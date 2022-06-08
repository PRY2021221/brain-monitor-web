// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancerModel _$$_CancerModelFromJson(Map<String, dynamic> json) =>
    _$_CancerModel(
      confidence: (json['confidence'] as num).toDouble(),
      boundingBox:
          (json['bounding_box'] as List<dynamic>).map((e) => e as int).toList(),
      maskVertices: (json['mask_vertices'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_CancerModelToJson(_$_CancerModel instance) =>
    <String, dynamic>{
      'confidence': instance.confidence,
      'bounding_box': instance.boundingBox,
      'mask_vertices': instance.maskVertices,
    };
