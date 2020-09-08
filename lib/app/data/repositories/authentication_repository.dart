import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/request_token.dart';
import 'package:getx_pattern_demo/app/data/providers/authentication_api.dart';

class AuthenticationRepository {
  final AuthenticationAPI _api = Get.find<AuthenticationAPI>();

  Future<RequestToken> newRequestToken() => _api.newRequestToken();
}
