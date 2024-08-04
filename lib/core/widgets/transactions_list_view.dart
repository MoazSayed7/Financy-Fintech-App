import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/extensions.dart';
import '../helpers/spacing.dart';
import '../models/transaction.dart';
import '../theming/styles.dart';
import 'transactions_list_view_item.dart';

class TransactionsListView extends StatelessWidget {
  final List<Transaction> transactions;
  final String? day;
  const TransactionsListView({
    super.key,
    required this.transactions,
    this.day,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 27.w, right: 21.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          day.isNullOrEmpty()
              ? const SizedBox.shrink()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      day!,
                      style: TextStyles.font16MediumDarkShadeOfGrayRegular,
                    ),
                    verticalSpace(12),
                  ],
                ),
          ListView.separated(
            separatorBuilder: (context, index) => verticalSpace(12),
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final transaction = transactions[index];

              return TransactionsListViewItem(
                title: transaction.title,
                subtitle: transaction.subtitle,
                value: transaction.value,
                leadingBackgroundColor: transaction.leadingBackgroundColor,
                leadingIconColor: transaction.leadingIconColor,
                icon: transaction.icon,
              );
            },
          ),
        ],
      ),
    );
  }
}
