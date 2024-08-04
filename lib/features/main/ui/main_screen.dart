import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theming/colors.dart';
import '../../home/ui/home_screen.dart';
import '../../profile/ui/profile_screen.dart';
import '../../wallet/ui/wallet_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomeScreen(),
    WalletScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0.r),
          topRight: Radius.circular(20.0.r),
        ),
        child: BottomAppBar(
          elevation: 2,
          shadowColor: const Color(0xff000008),
          height: 84.h,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Iconsax.home,
                    size: 24.sp,
                    color: _currentIndex == 0
                        ? ColorsManager.darkBlue
                        : const Color(0xFFA0A0A0),
                  ),
                  onPressed: () {
                    onTabTapped(0);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Iconsax.card,
                    size: 24.sp,
                    color: _currentIndex == 1
                        ? ColorsManager.darkBlue
                        : const Color(0xFFA0A0A0),
                  ),
                  onPressed: () {
                    onTabTapped(1);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Iconsax.chart_2,
                    size: 24.sp,
                    color: const Color(0xFFA0A0A0),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 24.sp,
                  icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: _currentIndex == 2
                            ? ColorsManager.darkBlue
                            : const Color(0xFFA0A0A0),
                        width: 1.0.w,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: const AssetImage(
                        'assets/images/PROFILE PIC 1.png',
                      ),
                      radius: 12.r,
                    ),
                  ),
                  onPressed: () {
                    onTabTapped(2);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
