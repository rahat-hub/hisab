
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'package:hisab/module/splash/splash_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SplashTabletPortrait extends GetView<SplashLogic> {

  final SizingInformation? sizingInformation;

  const SplashTabletPortrait({Key? key,this.sizingInformation,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return const Placeholder();
  }
}

class SplashTabletLandscape extends GetView<SplashLogic> {

  final SizingInformation? sizingInformation;

  const SplashTabletLandscape({Key? key,this.sizingInformation,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return const Placeholder();
  }
}