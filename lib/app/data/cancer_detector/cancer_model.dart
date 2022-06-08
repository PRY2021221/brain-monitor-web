import 'package:freezed_annotation/freezed_annotation.dart';

part 'cancer_model.freezed.dart';
part 'cancer_model.g.dart';

@freezed
abstract class CancerModel with _$CancerModel {
  factory CancerModel({
    required double confidence,
    @JsonKey(name: 'bounding_box') required List<int> boundingBox,
    @JsonKey(name: 'mask_vertices') required List<List<List<int>>> maskVertices,
  }) = _CancerModel;
  factory CancerModel.fromJson(Map<String, dynamic> json) =>
      _$CancerModelFromJson(json);
}
