import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class TransactionsListViewItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String value;
  final IconData icon;
  final Color leadingBackgroundColor;
  final Color leadingIconColor;
  const TransactionsListViewItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.leadingBackgroundColor,
    required this.icon,
    required this.leadingIconColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        horizontalTitleGap: 12.w,
        minTileHeight: 70.h,
        title: Text(
          title,
          style: TextStyles.font16DarkBlueSemiBold,
        ),
        subtitle: Text(
          subtitle,
          style: TextStyles.font14mediumDarkShadeOfGrayRegular,
        ),
        leading: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: leadingBackgroundColor,
          ),
          child: Icon(
            icon,
            color: leadingIconColor,
            size: 24,
          ),
        ),
        trailing: Text(
          value,
          style: TextStyles.font16DarkBlueSemiBold.copyWith(
            color: value.characters.first == '-'
                ? ColorsManager.red
                : ColorsManager.green,
          ),
        ),
      ),
    );
  }
}
