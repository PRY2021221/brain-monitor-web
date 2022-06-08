import 'package:brain_monitor/app/data/medical_history_module/medical_history_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_history_results.freezed.dart';
part 'medical_history_results.g.dart';

@freezed
abstract class MedicalHistoryResults with _$MedicalHistoryResults {
  factory MedicalHistoryResults({
    required int limit,
    required int page,
    required int total,
    required int totalPages,
    required List<MedicalHistoryModel> results,
  }) = _MedicalHistoryResults;
  factory MedicalHistoryResults.fromJson(Map<String, dynamic> json) =>
      _$MedicalHistoryResultsFromJson(json);
}
