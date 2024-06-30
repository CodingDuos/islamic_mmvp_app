// ignore_for_file: deprecated_member_use
import 'package:get/get.dart';

import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';
import 'package:mmvp_isllamic/modules/dashboard/controller/dashboard_controller.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (controller) {
          return const DashboardViewBody();
        });
  }
}

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
