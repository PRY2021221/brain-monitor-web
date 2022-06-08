import 'package:freezed_annotation/freezed_annotation.dart';

part 'interventions_types_model.freezed.dart';
part 'interventions_types_model.g.dart';

@freezed
class InterventionsTypesModel with _$InterventionsTypesModel {
  factory InterventionsTypesModel({
    required int surgeries,
    required int chemotherapies,
  }) = _InterventionsTypesModel;
  factory InterventionsTypesModel.fromJson(Map<String, dynamic> json) =>
      _$InterventionsTypesModelFromJson(json);
}
