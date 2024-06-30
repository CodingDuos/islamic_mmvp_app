// ignore_for_file: avoid_print

import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mmvp_isllamic/Services/httpoverides.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppService extends GetxService {
  late final Stream<List<ConnectivityResult>> _connectivityResultStream;
  late final SharedPreferences _sharedPreferences;

  Future<AppService> init() async {
    await _init();
    return this;
  }

  Future<void> _init() async {
    try {
      HttpOverrides.global = MyHttpOverrides();
      initializedNotifications();
      _connectivityResultStream =
          Connectivity().onConnectivityChanged.asBroadcastStream();
      _sharedPreferences = await SharedPreferences.getInstance();
    } on Exception catch (e) {
      print(e);
    }
  }

  initializedNotifications() {
    AwesomeNotifications().initialize(null, [
      NotificationChannel(
        channelKey: "call_channel",
        channelName: "Call Channel",
        channelDescription: "Channel for Calling",
        defaultColor: Colors.red,
        ledColor: Colors.white,
        importance: NotificationImportance.Max,
        channelShowBadge: true,
        locked: true,
        defaultRingtoneType: DefaultRingtoneType.Ringtone,
      ),
    ]);
  }

  Stream<List<ConnectivityResult>> get connectivityResultStream {
    return _connectivityResultStream;
  }

  SharedPreferences get sharedPreferences {
    return _sharedPreferences;
  }
}
