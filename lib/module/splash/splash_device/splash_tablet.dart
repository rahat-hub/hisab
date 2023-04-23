
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hisab/helper/internet_checker_helper/internet_checker_helper_logic.dart';
import 'package:hisab/module/splash/splash_logic.dart';
import 'package:hisab/shared/constant_file/constant_assets.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SplashTabletPortrait extends GetView<SplashLogic> {

  final SizingInformation? sizingInformation;

  const SplashTabletPortrait({Key? key,this.sizingInformation,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: sizingInformation!.localWidgetSize.height * 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    child: Brightness.dark != false ? Image.asset(ConstantAssets.loaderGifDarkMode) : Image.asset(ConstantAssets.loaderGifLightMode),
                  ),
                ),
                SizedBox(
                  height: sizingInformation!.localWidgetSize.height * 0.3,
                ),
                const CupertinoActivityIndicator(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SplashTabletLandscape extends GetView<SplashLogic> {

  final SizingInformation? sizingInformation;

  const SplashTabletLandscape({Key? key,this.sizingInformation,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    Get.find<InternetCheckerHelperLogic>();
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: sizingInformation!.localWidgetSize.height * 0.3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    child: Brightness.dark != false ? Image.asset(ConstantAssets.loaderGifDarkMode) : Image.asset(ConstantAssets.loaderGifLightMode),
                  ),
                ),
                SizedBox(
                  height: sizingInformation!.localWidgetSize.height * 0.3,
                ),
                const CupertinoActivityIndicator(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}