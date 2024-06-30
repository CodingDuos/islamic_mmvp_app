import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmvp_isllamic/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Global {
  Global();
  String sPLASHSCREENRoutes = Routes.SPLASHSCREEN;
  Future<void> saveUserId(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('user_id', userId);
  }

  Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_id');
  }

  Future<void> removeUserId(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('user_id');
    Get.offNamed(sPLASHSCREENRoutes);
  }
}
