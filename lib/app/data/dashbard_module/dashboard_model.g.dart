// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardModel _$$_DashboardModelFromJson(Map<String, dynamic> json) =>
    _$_DashboardModel(
      totalPatients: json['totalPatients'] as int,
      activePatients: json['activePatients'] as int,
      totalPatientsWithCancer: DashboardOptionsModel.fromJson(
          json['totalPatientsWithCancer'] as Map<String, dynamic>),
      percentageOfPrioritizations: DashboardOptionsModel.fromJson(
          json['percentageOfPrioritizations'] as Map<String, dynamic>),
      percentageOfPatientsStatus: DashboardOptionsModel.fromJson(
          json['percentageOfPatientsStatus'] as Map<String, dynamic>),
      interventionsByAge: InterventionsAgeModel.fromJson(
          json['interventionsByAge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DashboardModelToJson(_$_DashboardModel instance) =>
    <String, dynamic>{
      'totalPatients': instance.totalPatients,
      'activePatients': instance.activePatients,
      'totalPatientsWithCancer': instance.totalPatientsWithCancer,
      'percentageOfPrioritizations': instance.percentageOfPrioritizations,
      'percentageOfPatientsStatus': instance.percentageOfPatientsStatus,
      'interventionsByAge': instance.interventionsByAge,
    };
