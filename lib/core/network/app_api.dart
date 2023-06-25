import 'package:retrofit/http.dart';
import '../../config/constants.dart';
import 'package:dio/dio.dart';

import '../../features/auth/data/response/login_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AppApi {
  factory AppApi(
      Dio dio, {
        String baseUrl,
      }) = _AppApi;

  @POST(RequestConstants.login)
  Future<LoginResponse> login(
      @Field(ApiConstants.email) email,
      @Field(ApiConstants.password) password);
}