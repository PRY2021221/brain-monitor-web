import 'package:brain_monitor/app/data/cancer_detector/cancer_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'output_model.freezed.dart';
part 'output_model.g.dart';

@freezed
abstract class OutputModel with _$OutputModel {
  factory OutputModel({
    @JsonKey(name: 'Objects') required List<CancerModel> objects,
  }) = _OutputModel;
  factory OutputModel.fromJson(Map<String, dynamic> json) =>
      _$OutputModelFromJson(json);
}
