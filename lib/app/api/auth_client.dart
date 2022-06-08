import 'package:brain_monitor/app/data/auth_module.dart/payload_model.dart';
import 'package:brain_monitor/app/data/auth_module.dart/token_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio) = _AuthClient;

  @POST("/auth/signin")
  Future<TokenModel> getToken(
    @Body() Map<String, dynamic> map,
  );

  @POST("/auth/signup")
  Future<void> registerUser(
    @Body() Map<String, dynamic> map,
  );

  @GET("/auth/user-info")
  Future<PayloadModel> getPayload();
}
