import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'package:hisab/module/log_in/log_in_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LogInMobilePortrait extends GetView<LogInLogic> {
  final SizingInformation? sizingInformation;
  const LogInMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LogInLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return const Placeholder();
  }
}

class LogInMobileLandscape extends GetView<LogInLogic> {
  final SizingInformation? sizingInformation;
  const LogInMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LogInLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return const Placeholder();
  }
}