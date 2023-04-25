import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hisab/shared/constants/constant_size.dart';

abstract class TextBoxConstant {
  static textWidget({text, size = SizeConstant.MEDIUMTEXT, color, weight = FontWeight.w500, textAlign, textWrap = true, maxLines = 2, letterSpacing}) {
    final textScale = ScreenUtil().textScaleFactor;
    return Text(
      text.toString(),
      textAlign: textAlign,
      style: Theme.of(Get.context!).textTheme.bodyMedium!.copyWith(
        color: color ??
            Theme.of(Get.context!).textTheme.bodyMedium!.color,
        fontSize: double.parse(size.toString()) * textScale, fontWeight: weight, letterSpacing: letterSpacing,
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      softWrap: textWrap,
    );
  }
}