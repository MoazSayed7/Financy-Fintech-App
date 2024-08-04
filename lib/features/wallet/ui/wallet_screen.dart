import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/models/transaction.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/transactions_list_view.dart';
import 'widgets/wallet_top_bar.dart';
import 'widgets/card.dart';

class WalletScreen extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      title: 'Dribbble',
      subtitle: 'Subscription fee',
      value: '-\$15.00',
      leadingBackgroundColor:
          ColorsManager.warmShadeOfYellowOrange.withOpacity(0.2),
      leadingIconColor: ColorsManager.warmShadeOfYellowOrange,
      icon: Icons.laptop_mac_rounded,
    ),
    Transaction(
      title: 'House',
      subtitle: 'Saving',
      value: '-\$50.00',
      leadingBackgroundColor:
          ColorsManager.deepShadeOfBlueWithAHintOfPurple.withOpacity(0.2),
      leadingIconColor: ColorsManager.deepShadeOfBlueWithAHintOfPurple,
      icon: Icons.save_alt_rounded,
    ),
    Transaction(
      title: 'Sony Camera',
      subtitle: 'Shopping fee',
      value: '-\$200.00',
      leadingBackgroundColor: ColorsManager.softShadeOfPink.withOpacity(0.2),
      leadingIconColor: ColorsManager.softShadeOfPink,
      icon: Iconsax.bag_2,
    ),
    Transaction(
      title: 'Paypal',
      subtitle: 'Salary',
      value: '-\$32.00',
      leadingBackgroundColor: ColorsManager.green.withOpacity(0.2),
      leadingIconColor: ColorsManager.green,
      icon: Iconsax.card,
    ),
  ];
  WalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: 16.0.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WalletTopBar(),
                verticalSpace(12),
                Container(
                  margin: EdgeInsets.only(left: 24.w),
                  child: Row(
                    children: [
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(8),
                        dashPattern: const [16, 5],
                        color: ColorsManager.darkBlue,
                        strokeWidth: 2,
                        child: Container(
                          width: 36.w,
                          height: 173.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_circle_rounded,
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      horizontalSpace(16),
                      Expanded(
                        child: SizedBox(
                          height: 173.h,
                          width: double.infinity,
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return horizontalSpace(16);
                            },
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return CustomCard(
                                cardColor: index == 0
                                    ? Colors.white
                                    : ColorsManager.warmShadeOfYellow,
                              );
                            },
                            itemCount: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(32),
                SectionHeader(
                  title: 'Transactions',
                  button: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.setting_4,
                      color: ColorsManager.darkBlue,
                      size: 24,
                    ),
                  ),
                ),
                verticalSpace(16),
                TransactionsListView(
                  transactions: transactions,
                ),
                verticalSpace(32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
