// ignore_for_file: constant_identifier_names
import 'package:get/get.dart';
import 'package:mmvp_isllamic/modules/authentication/bindings/authentication_binding.dart';
import 'package:mmvp_isllamic/modules/authentication/view/authentication_view.dart';
import 'package:mmvp_isllamic/modules/dashboard/binding/dashboard_binding.dart';
import 'package:mmvp_isllamic/modules/dashboard/view/dashboard_view.dart';
import 'package:mmvp_isllamic/modules/onboard/bindings/onboard_binding.dart';
import 'package:mmvp_isllamic/modules/onboard/view/onboard_view.dart';
import 'package:mmvp_isllamic/modules/splash_screen/bindings/splash_binding.dart';
import 'package:mmvp_isllamic/modules/splash_screen/view/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.DASHBOARD;
  static final routes = [
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => const SplashScreenView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
  ];
}
