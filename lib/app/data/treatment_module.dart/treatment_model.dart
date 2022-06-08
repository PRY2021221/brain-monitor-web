import 'package:freezed_annotation/freezed_annotation.dart';

part 'treatment_model.freezed.dart';
part 'treatment_model.g.dart';

@freezed
abstract class TreatmentModel with _$TreatmentModel {
   factory TreatmentModel({
     required DateTime createdAt,
     required String observation,
     required String status,
     required String treatmentName,
   }) = _TreatmentModel;
   factory TreatmentModel.fromJson(Map<String, dynamic> json) => _$TreatmentModelFromJson(json);
}