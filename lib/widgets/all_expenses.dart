import 'package:admin_dashboard/widgets/all_expenses_items_list_view.dart';
import 'package:admin_dashboard/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

import 'all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
