import 'package:get/get.dart';
import 'package:mmvp_isllamic/modules/onboard/controller/onboard_controller.dart';

class OnboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardController>(() => OnboardController());
  }
}
