// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssignmentResults _$$_AssignmentResultsFromJson(Map<String, dynamic> json) =>
    _$_AssignmentResults(
      limit: json['limit'] as int,
      page: json['page'] as int,
      total: json['total'] as int,
      totalPages: json['totalPages'] as int,
      currentPrioritization: json['currentPrioritization'] as String?,
      currentAssignmentStatus: json['currentAssignmentStatus'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => AssignmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AssignmentResultsToJson(
        _$_AssignmentResults instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'currentPrioritization': instance.currentPrioritization,
      'currentAssignmentStatus': instance.currentAssignmentStatus,
      'results': instance.results,
    };
