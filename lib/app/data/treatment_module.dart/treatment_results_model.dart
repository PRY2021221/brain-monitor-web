import 'package:brain_monitor/app/data/treatment_module.dart/treatment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'treatment_results_model.freezed.dart';
part 'treatment_results_model.g.dart';

@freezed
class TreatmentResultsModel with _$TreatmentResultsModel {
  factory TreatmentResultsModel({
    required int limit,
    required int page,
    required int total,
    required int totalPages,
    required int totalSurgeries,
    required int totalChemotherapies,
    required List<TreatmentModel> results,
  }) = _TreatmentResultsModel;
  factory TreatmentResultsModel.fromJson(Map<String, dynamic> json) =>
      _$TreatmentResultsModelFromJson(json);
}
