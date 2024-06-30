// ignore_for_file: empty_catches

import 'dart:async';
import 'package:get/get.dart';
import 'package:mmvp_isllamic/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  String onboardRoutes = Routes.ONBOARD;
  String getStartedRoutes = Routes.AUTHENTICATION;

  // @override
  // void onInit() {
  //   super.onInit();
  //   startSplashTiming();
  // }

  void startSplashTiming() {
    Future.delayed(const Duration(seconds: 4), () {
      checkPreferences();
    });
  }

  void checkPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var getStarted = prefs.getString('get_started');
    try {
      if (getStarted != null) {
        Get.offNamed(getStartedRoutes);
      }
    } finally {
      Get.offNamed(onboardRoutes);
    }
  }
}
