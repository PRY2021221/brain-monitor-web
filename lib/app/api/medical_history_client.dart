import 'dart:html';

import 'package:brain_monitor/app/data/assignament_module/assignment_results.dart';
import 'package:brain_monitor/app/data/dashbard_module/dashboard_model.dart';
import 'package:brain_monitor/app/data/diagnosis_module/diagnosis_percentage_model.dart';
import 'package:brain_monitor/app/data/medical_history_module/medical_history_results.dart';
import 'package:brain_monitor/app/data/patient_module/magnetic_resonance_model.dart';

import 'package:brain_monitor/app/data/treatment_module.dart/treatment_results_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'medical_history_client.g.dart';

@RestApi()
abstract class MedicalHistoryClient {
  factory MedicalHistoryClient(Dio dio) = _MedicalHistoryClient;

  @GET("/medical-history/doctor/{id}")
  Future<MedicalHistoryResults> getMedicalHistoryByDoc(
    @Path('id') String id,
    @Query("limit") int limit,
    @Query("page") int page,
  );

  @POST("/medical-history")
  Future<void> registerMedicalHistory(
    @Body() Map<String, dynamic> map,
  );

  @GET("/medical-history/diagnosis/{id}")
  Future<DiagnosisPercentageModel> getDiagnosis(
    @Path('id') String id,
  );

  @POST("/medical-history/diagnosis/{id}")
  Future<void> registerDiagnosisDescription(
    @Body() Map<String, dynamic> map,
    @Path('id') String id,
  );

  @PUT("/medical-history/diagnosis-mock/{id}")
  Future<void> setCancer(
    @Body() Map<String, dynamic> map,
    @Path('id') String id,
  );

  @GET("/medical-history/treatment/{id}")
  Future<TreatmentResultsModel> getTreatments(
    @Path('id') String id,
    @Query("limit") int limit,
    @Query("page") int page,
  );

  @POST("/medical-history/treatment/{id}")
  Future<void> registerTreatment(
    @Body() Map<String, dynamic> map,
    @Path('id') String id,
  );

  @GET("/medical-history/magnetic-resonance/{id}")
  Future<List<MagneticResonanceModel>> getMagneticResonance(
    @Path('id') String id,
  );

  @DELETE("/medical-history/magnetic-resonance/{id}")
  Future<void> deleteMagneticResonance(
    @Path('id') String id,
  );

  @GET("/medical-history/assignment-request/{id}")
  Future<AssignmentResults> getMyAssignments(
    @Path('id') String id,
    @Query("limit") int limit,
    @Query("page") int page,
  );

  @GET("/medical-history/assignment-request-admin")
  Future<AssignmentResults> getAssignments(
    @Query("limit") int limit,
    @Query("page") int page,
  );

  @POST("/medical-history/assignment-request/{id}")
  Future<void> registerAssignment(
    @Body() Map<String, dynamic> map,
    @Path('id') String id,
  );

  @PUT("/medical-history/assignment-request/{id}")
  Future<void> editAssignment(
    @Body() Map<String, dynamic> map,
    @Path('id') String id,
  );

  @GET("/medical-history/dashboard-admin")
  Future<DashboardModel> getAdminDashboard({
    @Query("prioritization") String? prioritization,
    @Query("assignmentStatus") String? assignmentStatus,
    @Query("gender") String? gender,
    @Query("intervention") String? intervention,
  });

  @GET("/medical-history/dashboard")
  Future<DashboardModel> getDashboard({
    @Query("doctorId") int? doctorId,
    @Query("prioritization") String? prioritization,
    @Query("assignmentStatus") String? assignmentStatus,
    @Query("gender") String? gender,
    @Query("intervention") String? intervention,
  });
}
