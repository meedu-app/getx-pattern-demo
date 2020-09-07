import 'package:get/route_manager.dart';
import 'package:getx_pattern_demo/app/modules/detail/detail_binding.dart';
import 'package:getx_pattern_demo/app/modules/detail/detail_page.dart';
import 'package:getx_pattern_demo/app/modules/home/home_binding.dart';
import 'package:getx_pattern_demo/app/modules/home/home_page.dart';
import 'package:getx_pattern_demo/app/modules/splash/splash_binding.dart';
import 'package:getx_pattern_demo/app/modules/splash/splash_page.dart';
import 'package:getx_pattern_demo/app/routes/app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.DETAIL,
      page: () => DetailPage(),
      binding: DetailBinding(),
    )
  ];
}
