import 'package:brain_monitor/app/data/dashbard_module/interventions_types_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interventions_age_model.freezed.dart';
part 'interventions_age_model.g.dart';

@freezed
class InterventionsAgeModel with _$InterventionsAgeModel {
  factory InterventionsAgeModel({
    @JsonKey(name: '0') required InterventionsTypesModel cero,
    @JsonKey(name: '1') required InterventionsTypesModel uno,
    @JsonKey(name: '2') required InterventionsTypesModel dos,
    @JsonKey(name: '3') required InterventionsTypesModel tres,
    @JsonKey(name: '4') required InterventionsTypesModel cuadro,
    @JsonKey(name: '5') required InterventionsTypesModel cinco,
    @JsonKey(name: '6') required InterventionsTypesModel seis,
    @JsonKey(name: '7') required InterventionsTypesModel siete,
    @JsonKey(name: '8') required InterventionsTypesModel ocho,
    @JsonKey(name: '9') required InterventionsTypesModel nueve,
    @JsonKey(name: '10') required InterventionsTypesModel diez,
    @JsonKey(name: '11') required InterventionsTypesModel once,
    @JsonKey(name: '12') required InterventionsTypesModel doce,
    @JsonKey(name: '13') required InterventionsTypesModel trece,
    @JsonKey(name: '14') required InterventionsTypesModel catorce,
    @JsonKey(name: '15') required InterventionsTypesModel quince,
    @JsonKey(name: '16') required InterventionsTypesModel dieciseis,
    @JsonKey(name: '17') required InterventionsTypesModel diecisiete,

  }) = _InterventionsAgeModel;
  factory InterventionsAgeModel.fromJson(Map<String, dynamic> json) =>
      _$InterventionsAgeModelFromJson(json);
}
