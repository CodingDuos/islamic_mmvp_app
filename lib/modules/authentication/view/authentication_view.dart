import 'package:get/get.dart';
import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';
import 'package:mmvp_isllamic/modules/authentication/controller/authentication_controller.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthenticationController>(
        init: AuthenticationController(),
        builder: (authenticationController) {
          return const Scaffold(
            body: AuthenticationViewBody(),
          );
        });
  }
}

class AuthenticationViewBody extends StatelessWidget {
  const AuthenticationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthenticationController>(
        builder: (authenticationController) {
      return Container();
    });
  }
}
