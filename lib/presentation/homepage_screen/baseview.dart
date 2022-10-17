import 'dart:developer';
import 'dart:io';

import 'package:saturn_flutter/presentation/cart_screen/cart_screen.dart';
import 'package:saturn_flutter/presentation/homepage_screen/home_screen.dart';
import 'package:saturn_flutter/presentation/homepage_screen/widgets/drawer_widget.dart';
import 'package:saturn_flutter/presentation/homepage_screen/widgets/exit_sheet.dart';

import 'controller/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:saturn_flutter/core/app_export.dart';

// ignore: must_be_immutable
class BaseView extends GetWidget<HomepageController> {
  List<IconData> iconsList = [
    Icons.other_houses_outlined,
    Icons.shopping_cart_outlined,
    // Icons.circle_outlined,
    // Icons.person_outline_outlined
  ];
  int selectedIndex = 0;
  final HomepageController homePagecontroller = Get.find();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.bottomSheet(
            SureBottomSheet(
              title: "Exit App",
              subTitle: "Are you sure you want to exit the app?",
              yesCallBack: () {
                exit(0);
              },
            ),
            barrierColor: Colors.grey.withOpacity(.20));
        return false;
      },
      child: SafeArea(
        child:Obx(()=> Scaffold(
          key: _key,
          backgroundColor: ColorConstant.whiteA700,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child:  Container(
              width: size.width,
              margin: getMargin(
                left: 25,
                right: 25,
              ),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: (){
                      _key.currentState!.openDrawer();
                    },
                    child: CommonImageView(
                      svgPath: ImageConstant.imgGrid14X15,
                      height: getVerticalSize(
                        14.00,
                      ),
                      width: getHorizontalSize(
                        15.00,
                      ),
                    ),
                  ),
                  CommonImageView(
                    imagePath: ImageConstant.imgLogosatrun1,
                    height: getVerticalSize(
                      57.00,
                    ),
                  ),
                  CommonImageView(
                    svgPath: ImageConstant.imgSearch,
                    height: getSize(
                      17.00,
                    ),
                    width: getSize(
                      17.00,
                    ),
                  ),
                ],
              ),
            )
          ),
          body: homePagecontroller.selectedBottomNavIndex.value==0?
          HomeScreen():
          CartScreen(true),
          drawer: DrawerWidget(),
          bottomNavigationBar: Container(
            height: Get.height * .08,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.20),
                  spreadRadius: 1,
                  blurRadius: 15)
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(iconsList.length, (index) => tabs(index)),
            ),
          ),
        )),
      ),
    );
  }

  Widget tabs(int index) {
    return Obx(() => GestureDetector(
        onTap: () {
          homePagecontroller.selectedBottomNavIndex.value = index;

        },
        child: Icon(
          iconsList[index],
          color: homePagecontroller.selectedBottomNavIndex.value == index
              ? ColorConstant.gray601
              : Colors.grey,
          size: 22,
        )));
  }
}