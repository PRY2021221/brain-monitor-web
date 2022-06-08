import 'package:brain_monitor/app/data/assignament_module/assignment_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment_results.freezed.dart';
part 'assignment_results.g.dart';

@freezed
abstract class AssignmentResults with _$AssignmentResults {
  factory AssignmentResults({
    required int limit,
    required int page,
    required int total,
    required int totalPages,
    required String? currentPrioritization,
    required String? currentAssignmentStatus,

    required List<AssignmentModel> results,
  }) = _AssignmentResults;
  factory AssignmentResults.fromJson(Map<String, dynamic> json) =>
      _$AssignmentResultsFromJson(json);
}
