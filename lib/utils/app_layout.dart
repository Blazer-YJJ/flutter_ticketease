// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// // 封装 获取设备大小 Get有问题  报错：Null check operator used on a null value
// class AppLayout {
//   static getSize(BuildContext context) {
//     return MediaQuery.of(context).size;
//   }

//   static getScreenHeight() {
//     return Get.height ?? 0.0;
//   }

//   static getScreenWidth() {
//     return Get.width ?? 0.0;
//   }

//   static getHeight(double pixels) {
//     double x = getScreenHeight() / pixels ?? 0.0;
//     return getScreenHeight() / x;
//   }

//   static getWidth(double pixels) {
//     double x = getScreenWidth() / pixels ?? 0.0;
//     return getScreenWidth() / x;
//   }
// }
import 'package:flutter/material.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context, double pixels) {
    double screenHeight = getScreenHeight(context);
    double x = screenHeight / pixels;
    return screenHeight / x;
  }

  static double getWidth(BuildContext context, double pixels) {
    double screenWidth = getScreenWidth(context);
    double x = screenWidth / pixels;
    return screenWidth / x;
  }
}

