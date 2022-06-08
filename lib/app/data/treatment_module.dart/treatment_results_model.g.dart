// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TreatmentResultsModel _$$_TreatmentResultsModelFromJson(
        Map<String, dynamic> json) =>
    _$_TreatmentResultsModel(
      limit: json['limit'] as int,
      page: json['page'] as int,
      total: json['total'] as int,
      totalPages: json['totalPages'] as int,
      totalSurgeries: json['totalSurgeries'] as int,
      totalChemotherapies: json['totalChemotherapies'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => TreatmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TreatmentResultsModelToJson(
        _$_TreatmentResultsModel instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'totalSurgeries': instance.totalSurgeries,
      'totalChemotherapies': instance.totalChemotherapies,
      'results': instance.results,
    };
