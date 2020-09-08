import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/request_token.dart';
import 'package:getx_pattern_demo/app/data/providers/authentication_api.dart';
import 'package:getx_pattern_demo/app/data/repositories/authentication_repository.dart';

class MockAuthenticationAPI implements AuthenticationAPI {
  @override
  Future<RequestToken> newRequestToken() {}
}

class DependencyInjection {
  static void init() {
    Get.lazyPut(
      () => Dio(BaseOptions(baseUrl: 'https://api.themoviedb.org/3')),
    );
    Get.lazyPut(() => MockAuthenticationAPI());
    Get.lazyPut(() => AuthenticationRepository());
  }
}
