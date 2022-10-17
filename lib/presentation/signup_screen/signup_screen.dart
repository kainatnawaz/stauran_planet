import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';
import 'package:saturn_flutter/core/utils/validation_functions.dart';
import 'package:saturn_flutter/widgets/custom_button.dart';
import 'package:saturn_flutter/widgets/custom_text_form_field.dart';
import 'models/signup_model.dart';

class SignupScreen extends GetWidget<SignupController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late List<SignUpModel>? signupModel = [];

var signupController = Get.put(SignupController());
  bool isHide=true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              // autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: size.width,
                        decoration: BoxDecoration(
                          color: ColorConstant.gray600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 25,
                        right: 24,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgLogosatrun2,
                        height: getVerticalSize(
                          43.00,
                        ),
                        width: getHorizontalSize(
                          138.00,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 24,
                        top: 15,
                        right: 24,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            15.00,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                top: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    15.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 14,
                                        right: 14,
                                      ),
                                      child: Text(
                                        "msg_creat_a_new_acc".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRomanMedium22
                                            .copyWith(
                                          letterSpacing: 0.18,
                                          height: 1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                        top: 33,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            15.00,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 15,
                                                top: 34,
                                                right: 38,
                                              ),
                                              child: Text(
                                              "First Name",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRobotoRomanRegular12Indigo900
                                                    .copyWith(
                                                  height: 1.00,
                                                    fontStyle: FontStyle.italic
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 298,
                                            focusNode: FocusNode(),
                                            controller: controller.firstName,
                                            margin: getMargin(
                                              left: 14,
                                              top: 15,

                                              right: 14,
                                            ),
                                            variant: TextFormFieldVariant
                                                .UnderLineGray601,
                                            fontStyle: TextFormFieldFontStyle
                                                .RobotoRomanRegular14,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 15,
                                                top: 24,
                                                right: 38,
                                              ),
                                              child: Text(
                                                "Last Name",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRobotoRomanRegular12Indigo900
                                                    .copyWith(
                                                  height: 1.00,
                                                    fontStyle: FontStyle.italic
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 298,
                                            focusNode: FocusNode(),
                                            controller: controller.lastName,
                                            margin: getMargin(
                                              left: 14,
                                              top: 15,

                                              right: 14,
                                            ),
                                            variant: TextFormFieldVariant
                                                .UnderLineGray601,
                                            fontStyle: TextFormFieldFontStyle
                                                .RobotoRomanRegular14,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 15,
                                                top: 24,
                                                right: 38,
                                              ),
                                              child: Text(
                                                "Email",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRobotoRomanRegular12Indigo900
                                                    .copyWith(
                                                  height: 1.00,
                                                    fontStyle: FontStyle.italic
                                                ),
                                              ),
                                            ),
                                          ),

                                          CustomTextFormField(
                                            width: 298,
                                            focusNode: FocusNode(),
                                            controller: controller.email,
                                            margin: getMargin(
                                              left: 14,
                                              right: 14,
                                              top: 15,


                                            ),
                                            variant: TextFormFieldVariant
                                                .UnderLineGray601,
                                            fontStyle: TextFormFieldFontStyle
                                                .RobotoRomanRegular14,
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "Please enter valid email";
                                              }
                                              return null;
                                            },
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 15,
                                                top: 24,
                                                right: 38,
                                              ),
                                              child: Text(
                                                "Password",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRobotoRomanRegular12Indigo900
                                                    .copyWith(
                                                  height: 1.00,
                                                    fontStyle: FontStyle.italic
                                                ),
                                              ),
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 298,
                                            focusNode: FocusNode(),
                                            controller: controller.password,
                                            margin: getMargin(
                                              left: 14,
                                              right: 14,
                                              top: 15,
                                            ),
                                            variant: TextFormFieldVariant
                                                .UnderLineGray601,
                                            fontStyle: TextFormFieldFontStyle
                                                .RobotoRomanRegular14,
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center,
                                            suffix: GestureDetector(
                                              onTap: (){
                                                isHide=!isHide;
                                                Get.forceAppUpdate();
                                              },
                                              child: Container(
                                                  margin: getMargin(
                                                    left: 30,
                                                    top: 2,
                                                    right: 1,
                                                    bottom: 2,
                                                  ),
                                                  child:Icon(
                                                    isHide==false?
                                                    Icons.visibility
                                                        : Icons.visibility_off,
                                                  )
                                              ),
                                            ),
                                            suffixConstraints: BoxConstraints(
                                              minWidth: getHorizontalSize(
                                                22.00,
                                              ),
                                              minHeight: getVerticalSize(
                                                15.00,
                                              ),
                                            ),
                                            isObscureText: isHide,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: getMargin(
                                              top: 150,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  15.00,
                                                ),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomButton(
                                                    width: 326,
                                                    text: "lbl_create".tr,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    onTap: () {
                                                      if(_formKey.currentState!.validate())
                                                        {
                                                          controller.registerUser(controller.email, controller.password, controller.firstName, controller.firstName);
                                                        }
                                                    }),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 28,
                        right: 24,
                        bottom: 123,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: Text(
                              "msg_already_have_a".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRomanRegular14.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child: Padding(
                              padding: getPadding(
                                left: 8,
                                top: 1,
                              ),
                              child: Text(
                                "lbl_log_in".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanMedium14Gray600
                                    .copyWith(
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
