import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment_model.freezed.dart';
part 'assignment_model.g.dart';

@freezed
class AssignmentModel with _$AssignmentModel {
  factory AssignmentModel({
    required int id,
    required DateTime? updatedAt,
    required DateTime? createdAt,
    required String prioritization,
    required String? requestStatus,
    required String assignmentStatus,
    required String? patientDni,
    required String? patientName,
  }) = _AssignmentModel;
  factory AssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentModelFromJson(json);
}
