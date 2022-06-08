import 'package:freezed_annotation/freezed_annotation.dart';

part 'diagnosis_percentage_model.freezed.dart';
part 'diagnosis_percentage_model.g.dart';

@freezed
abstract class DiagnosisPercentageModel with _$DiagnosisPercentageModel {
  factory DiagnosisPercentageModel({
    required double percentage,
  }) = _DiagnosisPercentageModel;
  factory DiagnosisPercentageModel.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisPercentageModelFromJson(json);
}
