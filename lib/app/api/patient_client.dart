import 'package:brain_monitor/app/data/patient_module/patient_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'patient_client.g.dart';

@RestApi()
abstract class PatientClient {
  factory PatientClient(Dio dio) = _PatientClient;

  @GET("/patient/dni/{dni}")
  Future<PatientModel> getPatientById(
    @Path('dni') String dni,
  );

  @POST("/patient")
  Future<void> registerPatient(
    @Body() Map<String, dynamic> map,
  );
  
}
