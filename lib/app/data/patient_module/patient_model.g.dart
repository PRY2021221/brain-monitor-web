// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientModel _$$_PatientModelFromJson(Map<String, dynamic> json) =>
    _$_PatientModel(
      id: json['id'] as int,
      firstname: json['firstname'] as String,
      firstLastname: json['firstLastname'] as String,
      secondLastname: json['secondLastname'] as String,
      registeredDate: DateTime.parse(json['registeredDate'] as String),
      birthDate: DateTime.parse(json['birthDate'] as String),
      hospitalName: json['hospitalName'] as String,
      dni: json['dni'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      ubigeo: json['ubigeo'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_PatientModelToJson(_$_PatientModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'firstLastname': instance.firstLastname,
      'secondLastname': instance.secondLastname,
      'registeredDate': instance.registeredDate.toIso8601String(),
      'birthDate': instance.birthDate.toIso8601String(),
      'hospitalName': instance.hospitalName,
      'dni': instance.dni,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'ubigeo': instance.ubigeo,
      'address': instance.address,
    };
