import 'package:admin_dashboard/models/transaction_history_model.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryModel.subTitle,
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionHistoryModel.isWithDrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7CD87A),
          ),
        ),
      ),
    );
  }
}
