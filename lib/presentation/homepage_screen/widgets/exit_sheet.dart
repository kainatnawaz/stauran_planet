import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saturn_flutter/core/app_export.dart';

import 'package:sizer/sizer.dart';

import 'package:saturn_flutter/heights_widths.dart';

class SureBottomSheet extends StatefulWidget {
  String? title;
  String? subTitle;
  Function()? yesCallBack;

  SureBottomSheet({this.title, this.subTitle, this.yesCallBack});

  @override
  _SureBottomSheetState createState() => _SureBottomSheetState();
}

class _SureBottomSheetState extends State<SureBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .07),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          h1,
          h3,
          Text(
            widget.title ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 14.sp),
          ),
          h2,
          SizedBox(
            width: Get.width * .65,
            child: Text(
              widget.subTitle ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 14.sp),
            ),
          ),
          h2,
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: Get.height * .055,
                    width: Get.width * .8,
                    margin: EdgeInsets.only(bottom: Get.height * .015),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey),
                    child: Center(
                      child: Text(
                        "No",
                        style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: widget.yesCallBack,
                  child: Container(
                    height: Get.height * .055,
                    width: Get.width * .8,
                    margin: EdgeInsets.only(bottom: Get.height * .015),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(
                          0.03267971963511773,
                          0.9545454955536569,
                        ),
                        end: Alignment(
                          -0.1307189739001826,
                          -0.23863622402788742,
                        ),
                        colors: [
                          ColorConstant.gray600,
                          ColorConstant.red200,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        "Yes",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          h3,
        ],
      ),
    );
  }
}
