import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    _init();
  }

  _init() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      Get.offNamed(
        AppRoutes.HOME,
      );
    } catch (e) {
      print(e);
    }
  }
}
