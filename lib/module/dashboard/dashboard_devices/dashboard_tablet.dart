import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/module/dashboard/dashboard_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardTabletPortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardTabletPortrait({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DashboardTabletLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardTabletLandscape({Key? key,this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}