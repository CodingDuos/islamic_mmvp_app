import 'package:get/get.dart';
import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';

class OnboardController extends GetxController {
  PageController pageController = PageController();
  bool onlastpage = false;

  setonlastpage(bool val) {
    onlastpage = val;
    update();
  }
}
