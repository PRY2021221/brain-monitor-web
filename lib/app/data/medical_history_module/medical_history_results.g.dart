// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_history_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalHistoryResults _$$_MedicalHistoryResultsFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalHistoryResults(
      limit: json['limit'] as int,
      page: json['page'] as int,
      total: json['total'] as int,
      totalPages: json['totalPages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => MedicalHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalHistoryResultsToJson(
        _$_MedicalHistoryResults instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'results': instance.results,
    };
