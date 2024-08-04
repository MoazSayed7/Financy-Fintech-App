import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/styles.dart';

class EarningsListViewItem extends StatelessWidget {
  final int itemIndex;
  final Color color;
  final String char;
  final String value;
  final String companyName;
  const EarningsListViewItem({
    super.key,
    required this.itemIndex,
    required this.color,
    required this.char,
    required this.companyName,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 16.w),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
        ),
        width: 125.w,
        height: 130.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 28.w,
              height: 28.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withAlpha(75),
              ),
              child: Center(
                child: Text(
                  char,
                  style: TextStyles.font16DarkBlueSemiBold,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  companyName,
                  style: TextStyles.font12WhiteRegular,
                ),
                Text(
                  '\$ $value',
                  style: TextStyles.font18WhiteSemiBold,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
