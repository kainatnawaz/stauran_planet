import 'package:saturn_flutter/presentation/login_bottomsheet_screen/login_bottomsheet_screen.dart';

import '/core/app_export.dart';
import 'package:saturn_flutter/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  SplashController() {
    navigatoToSreen();
  }
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  void navigatoToSreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.bottomSheet(LoginBottomsheetScreen());
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
