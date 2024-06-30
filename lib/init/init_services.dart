// ignore: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:mmvp_isllamic/Services/app/app_service.dart';

Future<void> initDependencies() async {
  await _initAppService();
}

Future<void> _initAppService() async {
  await Get.putAsync(() => AppService().init());
}
