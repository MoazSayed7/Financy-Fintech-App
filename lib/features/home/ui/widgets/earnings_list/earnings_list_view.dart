import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/models/earning.dart';
import '../../../../../core/theming/colors.dart';
import 'earnings_list_view_item.dart';

class EarningsListView extends StatelessWidget {
  final List<Earning> earnings = [
    Earning(
      color: ColorsManager.teaGreen,
      char: 'U',
      companyName: 'Upwork',
      value: '3,000',
    ),
    Earning(
      color: ColorsManager.lightShadeOfPink,
      char: 'F',
      companyName: 'Freepik',
      value: '3,000',
    ),
    Earning(
      color: ColorsManager.mediumDarkShadeOfCyanBlue,
      char: 'W',
      companyName: 'Envato',
      value: '2,000',
    ),
  ];

  EarningsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 27.w),
      height: 130.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: earnings.length,
        itemBuilder: (context, index) {
          final earning = earnings[index];

          return EarningsListViewItem(
            itemIndex: index,
            color: earning.color,
            char: earning.char,
            companyName: earning.companyName,
            value: earning.value,
          );
        },
      ),
    );
  }
}
