import 'package:intl/intl.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode currentNode, FocusNode nextNode) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }

  static toastMassage(String massage) {
    Fluttertoast.showToast(
      msg: massage,
      backgroundColor: AppColors.defaultDayColor,
      gravity: ToastGravity.BOTTOM,
    );
  }

  static void showCustomSnackbar(
      BuildContext context, String title, String message) {
    final snackBar = SnackBar(
      duration: const Duration(microseconds: 2000),
      content: Text(message),
      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      action: SnackBarAction(
        label: title,
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

Widget spacer({double height = 16}) {
  return SizedBox(
    height: height,
  );
}

DateTime getDateTimeFromUnix(int dt) =>
    DateTime.fromMillisecondsSinceEpoch(dt * 1000);

String getTimeInHour(int dt) {
  final curDt = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  final hour = DateFormat('hh a').format(curDt);
  return hour;
}

String getTimeInHHMM(int dt) {
  final curDt = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  final hour = DateFormat('hh:mm a').format(curDt);
  return hour;
}

String getDayFromEpoch(int dt) {
  final curDt = DateTime.fromMillisecondsSinceEpoch(dt * 1000);
  final day = DateFormat('EEEE').format(curDt);
  return day;
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

class SomethingWentWrong extends StatelessWidget {
  const SomethingWentWrong(
      {super.key, this.message = "Something went wrong !"});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: getMediumStyle(
            fontSize: 12.spMin, color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}

class NoRecordFound extends StatelessWidget {
  const NoRecordFound({super.key, this.message = "No Records"});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: getMediumStyle(
            fontSize: 12.spMin, color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}

class AppColors {
  AppColors._();

  static const Color defaultDateColor = Colors.black;
  static const Color defaultDayColor = Colors.black;
  static const Color defaultMonthColor = Colors.black;
  static const Color defaultSelectionColor = Color(0x30000000);
  static const Color defaultDeactivatedColor = Color(0xFF666666);
}
