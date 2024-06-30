// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:get/get.dart';
import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';
import 'package:mmvp_isllamic/init/init_services.dart';
import 'package:mmvp_isllamic/routes/app_pages.dart';
import 'package:mmvp_isllamic/utils/thems/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final screenData = MediaQuery.of(context);
    Size size = screenData.size;
    return ScreenUtilInit(
      designSize: Size(size.width, size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data: screenData.copyWith(textScaleFactor: 1),
              child: child!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'News App',
          theme: lightThemeData(context),
          themeMode: ThemeMode.light,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
