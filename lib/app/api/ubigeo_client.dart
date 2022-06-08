import 'package:brain_monitor/app/data/patient_module/ubigeo_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'ubigeo_client.g.dart';

@RestApi()
abstract class UbigeoClient {
  factory UbigeoClient(Dio dio) = _UbigeoClient;

  @GET("/ubigeo/department")
  Future<List<UbigeoModel>> getDepartments();

  @GET("/ubigeo/province")
  Future<List<UbigeoModel>> getProvinces(
    @Query("departmentId") String departmentId,
  );

  @GET("/ubigeo/district")
  Future<List<UbigeoModel>> getDistricts(
    @Query("departmentId") String departmentId,
    @Query("provinceId") String provinceId,
  );
}
