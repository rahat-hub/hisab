import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/module/dashboard/dashboard_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobilePortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DashboardMobileLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardMobileLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}