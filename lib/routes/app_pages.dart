import 'package:get/get.dart';
import 'package:hisab/helper/internet_checker_helper/internet_checker_helper_binding.dart';
import 'package:hisab/module/dashboard/dashboard_binding.dart';
import 'package:hisab/module/dashboard/dashboard_view.dart';
import 'package:hisab/module/splash/splash_binding.dart';
import 'package:hisab/module/splash/splash_view.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
      bindings: [
        SplashBinding(),
        InternetCheckerHelperBinding(),
      ],
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => const DashboardPage(),
      bindings: [
        DashboardBinding(),
        InternetCheckerHelperBinding(),
      ],
    ),
  ];
}