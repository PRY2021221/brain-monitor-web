import 'package:brain_monitor/app/data/dashbard_module/dashboard_options_model.dart';
import 'package:brain_monitor/app/data/dashbard_module/interventions_age_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
class DashboardModel with _$DashboardModel {
   factory DashboardModel({
     required int totalPatients,
     required int activePatients,
     required DashboardOptionsModel totalPatientsWithCancer,
     required DashboardOptionsModel percentageOfPrioritizations,
     required DashboardOptionsModel percentageOfPatientsStatus,
     required InterventionsAgeModel interventionsByAge,
   }) = _DashboardModel;
   factory DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);
}