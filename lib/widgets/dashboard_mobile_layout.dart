
import 'package:admin_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/widgets/income_section.dart';
import 'package:admin_dashboard/widgets/my_cards_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
