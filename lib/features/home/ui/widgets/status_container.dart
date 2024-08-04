import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 21.w, left: 27.w),
      child: SizedBox(
        height: 75.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.r),
                image: const DecorationImage(
                  image: AssetImage('assets/images/home_status_pattern.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatusItem(
                    Icons.arrow_upward_rounded,
                    ColorsManager.green,
                    'Income',
                    '20,000',
                  ),
                  Container(
                    height: 42.h,
                    color: const Color(0xFFCFCFCF),
                    width: 1.w,
                  ),
                  _buildStatusItem(
                    Icons.arrow_downward_rounded,
                    ColorsManager.red,
                    'Outcome',
                    '17,000',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusItem(
      IconData icon, Color iconColor, String text, String value) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 24,
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyles.font12WhiteSmokeRegular,
            ),
            Text(
              '\$ $value',
              style: TextStyles.font18WhiteSemiBold,
            ),
          ],
        )
      ],
    );
  }
}
