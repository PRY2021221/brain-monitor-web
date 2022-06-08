import 'package:freezed_annotation/freezed_annotation.dart';

part 'magnetic_resonance_model.freezed.dart';
part 'magnetic_resonance_model.g.dart';

@freezed
class MagneticResonanceModel with _$MagneticResonanceModel {
  factory MagneticResonanceModel({
    required DateTime createdAt,
    required String filename,
    required int medicalHistoryId,
    required String resonanceAreaName,
    required String resonanceImageLink,
    required String status,
    required int id,
  }) = _MagneticResonanceModel;
  factory MagneticResonanceModel.fromJson(Map<String, dynamic> json) =>
      _$MagneticResonanceModelFromJson(json);
}
