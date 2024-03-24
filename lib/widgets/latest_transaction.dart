import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/latest_transaction_list_view_builder.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 8),
        const LatestTransactionListViewBuilder(),
      ],
    );
  }
}
