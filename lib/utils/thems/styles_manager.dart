import 'package:mmvp_isllamic/commons/common_imports/common_libs.dart';
import '../constants/font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
      fontFamily: 'Gilroy',
      color: color,
      fontSize: fontSize.sp,
      fontWeight: fontWeight);
}

// regular style
TextStyle getRegularStyle({double fontSize = 16, Color color = Colors.black}) {
  return _getTextStyle(fontSize.sp, FontWeightManager.regular, color);
}

// medium style
TextStyle getMediumStyle({double fontSize = 16, Color color = Colors.black}) {
  return _getTextStyle(fontSize.sp, FontWeightManager.light, color);
}

// medium style
TextStyle getLightStyle({double fontSize = 14, Color color = Colors.black}) {
  return _getTextStyle(fontSize.sp, FontWeightManager.light, color);
}

// bold style
TextStyle getBoldStyle({double fontSize = 14, Color color = Colors.black}) {
  return _getTextStyle(fontSize.sp, FontWeightManager.bold, color);
}

// semibold style
TextStyle getSemiBoldStyle({double fontSize = 14, Color color = Colors.black}) {
  return _getTextStyle(fontSize.sp, FontWeightManager.bold, color);
}

// bold style
TextStyle getExtraBoldStyle(
    {double fontSize = 14, Color color = Colors.black}) {
  return _getTextStyle(fontSize.sp, FontWeightManager.extraBold, color);
}
