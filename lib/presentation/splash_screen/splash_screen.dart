import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/splash_screen.png',
        fit: BoxFit.fill,
      ),
    );
  }
}
