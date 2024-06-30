import 'package:mmvp_isllamic/commons/common_functions/padding.dart';
import '../../../../commons/common_imports/common_libs.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.label,
      required this.index});

  final Function() onTap;
  final String icon;
  final String label;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon,
                width: 20.w,
                height: 20.h,
                color: 4 == index
                    ? MyColors.themebBluishGreyColor
                    : MyColors.grey),
            padding5,
            Text(
              label,
              style: getMediumStyle(
                  fontSize: 8.5,
                  color: 4 == index
                      ? MyColors.themebBluishGreyColor
                      : MyColors.grey),
            )
          ],
        ),
      ),
    );
  }
}
