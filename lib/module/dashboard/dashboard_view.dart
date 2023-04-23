import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/module/dashboard/dashboard_devices/dashboard_mobile.dart';
import 'package:hisab/module/dashboard/dashboard_devices/dashboard_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'dashboard_logic.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Get.find<DashboardLogic>();

    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return ScreenTypeLayout.builder(
            mobile: (context) => OrientationLayoutBuilder(
              portrait: (context) => DashboardMobilePortrait(sizingInformation: sizingInformation),
              landscape: (context) => DashboardMobileLandscape(sizingInformation: sizingInformation),
            ),
            tablet: (context) => OrientationLayoutBuilder(
              portrait: (context) => DashboardTabletPortrait(sizingInformation: sizingInformation),
              landscape: (context) => DashboardTabletLandscape(sizingInformation: sizingInformation),
            ),
          );
        }
    );
  }
}
