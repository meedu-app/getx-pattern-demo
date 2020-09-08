import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/models/request_token.dart';
import 'package:getx_pattern_demo/app/data/repositories/authentication_repository.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class SplashController extends GetxController {
  final AuthenticationRepository _repository =
      Get.find<AuthenticationRepository>();

  @override
  void onReady() {
    _init();
  }

  _init() async {
    try {
      RequestToken requestToken = await _repository.newRequestToken();
      Get.offNamed(AppRoutes.HOME);
    } catch (e) {
      print(e);
    }
  }
}
