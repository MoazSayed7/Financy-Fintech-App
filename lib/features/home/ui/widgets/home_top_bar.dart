import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/PROFILE PIC 1.png',
                height: 32.0.h,
                width: 32.0.w,
              ),
              horizontalSpace(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning!',
                    style: TextStyles.font12DarkBlueRegular,
                  ),
                  Text(
                    'Client Name',
                    style: TextStyles.font18DarkBlueSemiBold,
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            radius: 24.0.r,
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              'assets/svgs/notifications.svg',
            ),
          )
        ],
      ),
    );
  }
}
