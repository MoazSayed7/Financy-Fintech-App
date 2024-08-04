import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  const CustomCard({
    super.key,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120.h,
          width: 271.w,
          padding: EdgeInsets.fromLTRB(
            12.w,
            12.h,
            12.w,
            20.h,
          ),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(10.r),
              topEnd: Radius.circular(10.r),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyles.font12DarkBlueRegular,
                      ),
                      Text(
                        '\$25,000.40',
                        style: TextStyles.font18DarkBlueSemiBold,
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/visa-256.png',
                    width: 48.w,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '1234',
                    style: TextStyles.font12DarkBlueRegular,
                  ),
                  horizontalSpace(15.33),
                  Text(
                    '••••',
                    style: TextStyles.font12DarkBlueRegular,
                  ),
                  horizontalSpace(15.33),
                  Text(
                    '••••',
                    style: TextStyles.font12DarkBlueRegular,
                  ),
                  horizontalSpace(15.33),
                  Text(
                    '3456',
                    style: TextStyles.font12DarkBlueRegular,
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: 53.h,
          width: 271.w,
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 8.h,
          ),
          decoration: BoxDecoration(
            color: ColorsManager.darkBlue,
            borderRadius: BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(10.r),
              bottomStart: Radius.circular(10.r),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyles.font10lightNeutralGrayRegular,
                  ),
                  Text(
                    'Client Name',
                    style: TextStyles.font12WhiteSemiBold,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Exp',
                    style: TextStyles.font10lightNeutralGrayRegular,
                  ),
                  Text(
                    '09/23',
                    style: TextStyles.font12WhiteSemiBold,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
