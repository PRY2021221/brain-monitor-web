// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'output_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutputModel _$$_OutputModelFromJson(Map<String, dynamic> json) =>
    _$_OutputModel(
      objects: (json['Objects'] as List<dynamic>)
          .map((e) => CancerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OutputModelToJson(_$_OutputModel instance) =>
    <String, dynamic>{
      'Objects': instance.objects,
    };
