import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_options_model.freezed.dart';
part 'dashboard_options_model.g.dart';

@freezed
class DashboardOptionsModel with _$DashboardOptionsModel {
  factory DashboardOptionsModel({
    @JsonKey(name: 'Y') required int? y,
    @JsonKey(name: 'N') required int? n,
    @JsonKey(name: 'H') required int? h,
    @JsonKey(name: 'M') required int? m,
    @JsonKey(name: 'L') required int? l,
    @JsonKey(name: 'A') required int? a,
    @JsonKey(name: 'I') required int? i,
  }) = _DashboardOptionsModel;
  factory DashboardOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardOptionsModelFromJson(json);
}
