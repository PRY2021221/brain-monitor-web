import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_model.freezed.dart';
part 'patient_model.g.dart';

@freezed
class PatientModel with _$PatientModel {
  factory PatientModel({
    required int id,
    required String firstname,
    required String firstLastname,
    required String secondLastname,
    required DateTime registeredDate,
    required DateTime birthDate,
    required String hospitalName,
    required String dni,
    required String phoneNumber,
    required String email,
    required String ubigeo,
    required String address,
  }) = _PatientModel;
  factory PatientModel.fromJson(Map<String, dynamic> json) =>
      _$PatientModelFromJson(json);
}
