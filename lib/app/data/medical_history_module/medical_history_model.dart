import 'package:freezed_annotation/freezed_annotation.dart';

part 'medical_history_model.freezed.dart';
part 'medical_history_model.g.dart';

@freezed
abstract class MedicalHistoryModel with _$MedicalHistoryModel {
  factory MedicalHistoryModel({
    required int medicalHistoryId,
    required String patientDni,
    required int doctorId,
    required String patientName,
    required String prioritization,
    required DateTime registeredDate,
    required int patientAge,
  }) = _MedicalHistoryModel;
  factory MedicalHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalHistoryModelFromJson(json);
}
