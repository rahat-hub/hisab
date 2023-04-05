
import 'package:get/get.dart';
import 'internet_checker_helper_logic.dart';

class InternetCheckerHelperBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InternetCheckerHelperLogic());
  }
}