import 'package:airport_page/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppStyles {
  static const systemUiOverlayStyle = SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.white,
  );

  static final boxDecoration = BoxDecoration(
    border: Border.all(color: AppColors.darkGrey, width: 1.5),
    borderRadius: BorderRadius.circular(16.0),
  );
}