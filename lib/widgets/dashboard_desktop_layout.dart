import 'package:admin_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:admin_dashboard/widgets/income_section.dart';
import 'package:admin_dashboard/widgets/my_cards_and_transaction_history_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              MyCardsAndTransactionHistorySection(),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: IncomeSection(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
