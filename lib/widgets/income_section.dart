import 'package:admin_dashboard/widgets/custom_background_container.dart';
import 'package:admin_dashboard/widgets/income_chart.dart';
import 'package:admin_dashboard/widgets/income_details_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: IncomeChart(),
                ),
                Expanded(
                  child: IncomeDetailsListView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
