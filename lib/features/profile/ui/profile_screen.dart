import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F3F3),
        actions: [
          IconButton(
            onPressed: () async {},
            icon: const Icon(
              Iconsax.setting_2,
              color: ColorsManager.darkBlue,
            ),
            iconSize: 24.sp,
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFFF3F3F3),
          ),
          Positioned.fromRelativeRect(
            rect: RelativeRect.fromLTRB(
              0.w,
              92.h,
              0.w,
              0.h,
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
                color: Colors.white,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(190.h),
              Text(
                'Client Name',
                style: TextStyles.font20DarkBlueSemiBold,
              ),
              Gap(8.h),
              Text(
                'example@email.com',
                style: TextStyles.font14mediumDarkShadeOfGrayRegular,
              ),
              Gap(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTextButton(
                    buttonWidth: 164,
                    buttonHeight: 60,
                    buttonText: 'Transaction History',
                    textStyle: TextStyles.font12DarkBlueRegular,
                    backgroundColor: Colors.transparent,
                    verticalPadding: 10,
                    horizontalPadding: 10,
                    onPressed: () {},
                  ),
                  AppTextButton(
                    buttonText: 'Payment Methods',
                    verticalPadding: 10,
                    buttonHeight: 60,
                    horizontalPadding: 10,
                    backgroundColor: Colors.transparent,
                    buttonWidth: 164,
                    textStyle: TextStyles.font12DarkBlueRegular,
                    onPressed: () {},
                  ),
                ],
              ),
              Gap(24.h),
              SizedBox(
                width: 327.w,
                height: 200.h,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: ListTile.divideTiles(
                    color: const Color.fromARGB(117, 237, 237, 237),
                    context: context,
                    tiles: [
                      _buildListTileItem(
                        'Personal Information',
                        Iconsax.personalcard,
                        ColorsManager.blue,
                        context,
                      ),
                      _buildListTileItem(
                        'Security Settings',
                        Iconsax.lock,
                        ColorsManager.green,
                        context,
                      ),
                      _buildListTileItem(
                        'Privacy',
                        Iconsax.security,
                        ColorsManager.red,
                        context,
                      ),
                    ],
                  ).toList(),
                ),
              )
            ],
          ),
          Positioned(
            top: 38.h,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/PROFILE PIC 1.png',
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: 3.w,
                ),
              ),
              width: 120.w,
              height: 120.h,
            ),
          ),
          Positioned(
            top: 120.h,
            right: 120.w,
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xffF8F8F8),
                shape: BoxShape.circle,
              ),
              height: 31.h,
              child: IconButton(
                onPressed: () async {},
                iconSize: 24.sp,
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 2.h),
                icon: const Icon(
                  Icons.edit_outlined,
                  color: ColorsManager.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile _buildListTileItem(
    String title,
    IconData icon,
    Color iconColor,
    BuildContext context,
  ) {
    return ListTile(
      title: Text(
        title,
        style: TextStyles.font14DarkBlueMedium,
      ),
      horizontalTitleGap: 13.w,
      titleAlignment: ListTileTitleAlignment.center,
      dense: false,
      minVerticalPadding: 16.h,
      leading: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: iconColor.withAlpha(75),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 24.sp,
        ),
      ),
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      minTileHeight: 70.h,
    );
  }
}
