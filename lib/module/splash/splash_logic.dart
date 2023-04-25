import 'package:get/get.dart';
import 'package:hisab/routes/app_routes.dart';

class SplashLogic extends GetxController {

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await Future.delayed(const Duration(seconds: 4));
    await newPageLoad();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  newPageLoad(){
    Get.toNamed(Routes.DASHBOARD);
  }
}
