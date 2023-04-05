import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hisab/shared/constants/colors.dart';

abstract class SnackBarHelper {
  static openSnackBar({title, message, isError = false}) {
    return Get.rawSnackbar(
        titleText: title != null ? Text(title) : const SizedBox(),
        messageText: message != null ? Text(message) : const SizedBox(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: isError ? ColorConstants.RED : ColorConstants.PRIMARYBLUE
    );
  }
}