import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/models/transaction.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/section_header.dart';
import '../../../core/widgets/transactions_list_view.dart';
import 'widgets/balance_container.dart';
import 'widgets/earnings_list/earnings_list_view.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/status_container.dart';

class HomeScreen extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      title: 'Adobe Illustrator',
      subtitle: 'Subscription fee',
      value: '-\$32.00',
      leadingBackgroundColor:
          ColorsManager.warmShadeOfYellowOrange.withOpacity(0.2),
      leadingIconColor: ColorsManager.warmShadeOfYellowOrange,
      icon: Icons.laptop_mac_rounded,
    ),
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
      value: '+\$32.00',
      leadingBackgroundColor: ColorsManager.green.withOpacity(0.2),
      leadingIconColor: ColorsManager.green,
      icon: Iconsax.card,
    ),
  ];
  HomeScreen({super.key});
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
                const HomeTopBar(),
                verticalSpace(11),
                const BalanceContainer(),
                verticalSpace(16),
                const StatusContainer(),
                verticalSpace(32),
                SectionHeader(
                  title: 'Earnings',
                  button: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyles.font14BlueBold,
                    ),
                  ),
                ),
                verticalSpace(16),
                EarningsListView(),
                verticalSpace(32),
                SectionHeader(
                  title: 'Transactions',
                  button: TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyles.font14BlueBold,
                    ),
                  ),
                ),
                verticalSpace(16),
                TransactionsListView(
                  transactions: transactions,
                  day: 'Today',
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
