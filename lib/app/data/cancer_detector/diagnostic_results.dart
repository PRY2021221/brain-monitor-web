import 'package:brain_monitor/app/data/cancer_detector/output_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnostic_results.freezed.dart';
part 'diagnostic_results.g.dart';

@freezed
abstract class DiagnosticResults with _$DiagnosticResults {
  factory DiagnosticResults({
    required OutputModel output,
  }) = _DiagnosticResults;
  factory DiagnosticResults.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticResultsFromJson(json);
}
