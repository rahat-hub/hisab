import 'package:get/get.dart';

import 'log_in_logic.dart';

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInLogic());
  }
}
