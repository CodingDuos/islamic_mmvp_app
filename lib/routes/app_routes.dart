// ignore_for_file: constant_identifier_names
part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASHSCREEN = _Paths.SPLASHSCREEN;
  static const AUTHENTICATION = _Paths.AUTHENTICATION;
  static const ONBOARD = _Paths.ONBOARD;
  static const DASHBOARD = _Paths.DASHBOARD;
}

abstract class _Paths {
  _Paths._();
  static const DASHBOARD = '/dashboard';
  static const SPLASHSCREEN = '/splashscreen';
  static const AUTHENTICATION = '/authentication';
  static const ONBOARD = '/onboard';
}
