import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';
import 'theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.dark,
      light: ThemeConfig.lightTheme,
      dark: ThemeConfig.darkTheme,
      builder: (light, dark) => ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(360, 690),
        builder: (context,child) {
          return GetMaterialApp(
            builder: EasyLoading.init(),
            debugShowCheckedModeBanner: false,
            theme: light,
            darkTheme: dark,
            enableLog: true,
            initialRoute: AppPages.INITIAL,
            defaultTransition: Transition.fade,
            getPages: AppPages.routes,
            smartManagement: SmartManagement.keepFactory,
            title: 'Hisab',
          );
        },
      ),
    );
  }
}

