import 'package:get/get.dart';
import 'package:mmvp_isllamic/modules/authentication/controller/authentication_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationController>(() => AuthenticationController());
  }
}
