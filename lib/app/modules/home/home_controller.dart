import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/data/repositories/local/local_auth_repository.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class HomeController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }
}
