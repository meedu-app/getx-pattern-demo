import 'package:get/get.dart';
import 'package:getx_pattern_demo/app/modules/detail/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailController());
  }
}
