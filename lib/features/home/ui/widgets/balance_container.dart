import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 21.w, left: 27.w),
      child: SizedBox(
        height: 138.h,
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
                borderRadius: BorderRadius.circular(10.0.r),
                image: const DecorationImage(
                  image: AssetImage('assets/images/home_balance_pattern.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyles.font14WhiteRegular,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '\$25,000.40',
                    style: TextStyles.font32WhiteSemiBold,
                    textAlign: TextAlign.start,
                  ),
                  verticalSpace(14),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'My Wallet',
                            style: TextStyles.font12WhiteRegular,
                          ),
                          horizontalSpace(8),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            width: 32.w,
                            height: 32.h,
                            child: Icon(
                              Iconsax.arrow_right_1,
                              size: 16.sp,
                              color: ColorsManager.darkBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
