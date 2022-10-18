import 'package:saturn_flutter/presentation/login_screen/login_screen.dart';

import 'controller/login_bottomsheet_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';

class LoginBottomsheetScreen extends GetWidget<LoginBottomsheetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                margin: EdgeInsets.only(top: 10),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(4.00),
                          width: getHorizontalSize(62.00),
                          margin:
                              EdgeInsets.only(left: 149, top: 18, right: 149),
                          decoration: BoxDecoration(
                              color: ColorConstant.gray600,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(2.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 35, right: 24),
                              child: Text("msg_start_your_well".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold22.copyWith(
                                      letterSpacing: 0.18, height: 1.00)))),
                      CustomButton(
                          width: 326,
                          text: "lbl_log_in".tr,
                          margin: EdgeInsets.only(
                              left: 24, top: 16, right: 24, bottom: 5),
                          onTap: () {
                            // Get.to(() => LoginScreen());
                          },
                          alignment: Alignment.center),
                      CustomButton(
                          width: 326,
                          text: "msg_continue_as_gue".tr,
                          margin: EdgeInsets.only(
                              left: 24, top: 5, right: 24, bottom: 20),
                          variant: ButtonVariant.FillPink101,
                          onTap: onTapBtnContinueasgue,
                          alignment: Alignment.center)
                    ])),
          ],
        ));
  }

  onTapBtnContinueasgue() {
    // Get.toNamed(AppRoutes.homepageScreen);
  }

  loginButton() {
    // Get.toNamed(AppRoutes.loginScreen);
  }
}
