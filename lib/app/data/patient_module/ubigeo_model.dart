import 'package:freezed_annotation/freezed_annotation.dart';

part 'ubigeo_model.freezed.dart';
part 'ubigeo_model.g.dart';

@freezed
class UbigeoModel with _$UbigeoModel {
  factory UbigeoModel({
    required String id,
    required String name,
  }) = _UbigeoModel;
  factory UbigeoModel.fromJson(Map<String, dynamic> json) =>
      _$UbigeoModelFromJson(json);
}
