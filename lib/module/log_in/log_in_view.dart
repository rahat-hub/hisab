import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/module/log_in/log_in_devices/log_in_mobile.dart';
import 'package:hisab/module/log_in/log_in_devices/log_in_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'log_in_logic.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.find<LogInLogic>();

    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return ScreenTypeLayout.builder(
            mobile: (context) => OrientationLayoutBuilder(
              portrait: (context) => LogInMobilePortrait(sizingInformation: sizingInformation),
              landscape: (context) => LogInMobileLandscape(sizingInformation: sizingInformation),
            ),
            tablet: (context) => OrientationLayoutBuilder(
              portrait: (context) => LogInTabletPortrait(sizingInformation: sizingInformation),
              landscape: (context) => LogInTabletLandscape(sizingInformation: sizingInformation),
            ),
          );
        }
    );
  }
}
