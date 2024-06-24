// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/services.dart';

import 'package:get/get.dart';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';
import 'package:mmvp_isllamic/modules/authentication/pages/login_page.dart';
import 'package:mmvp_isllamic/modules/homepage/pages/hadees_page.dart';
import 'package:mmvp_isllamic/modules/homepage/pages/home_page.dart';
import 'package:mmvp_isllamic/modules/homepage/pages/prayer_page.dart';
import 'package:mmvp_isllamic/modules/homepage/pages/registration_page.dart';
import 'package:mmvp_isllamic/modules/onboard/view/onboard_view.dart';
import 'package:mmvp_isllamic/utils/thems/theme.dart';

Future<void> main() async {
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: "call_channel",
        channelName: "Call Channel",
        channelDescription: "Channel of Calling",
        defaultColor: Colors.red,
        ledColor: Colors.white,
        importance: NotificationImportance.Max,
        channelShowBadge: true,
        locked: true,
        defaultRingtoneType: DefaultRingtoneType.Ringtone)
  ]);
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      designSize: Size(size.width, size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          builder: (BuildContext context, Widget? child) {
            final MediaQueryData data = MediaQuery.of(context);
            return MediaQuery(
              data: data.copyWith(textScaleFactor: 1),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Imedifix Service',
          theme: lightThemeData(context),
          themeMode: ThemeMode.light,
          // onGenerateRoute: AppRoutes.onGenerateRoute,
          home: QuranApp(),
        );
      },
    );
  }
}
