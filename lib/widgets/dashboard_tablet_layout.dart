import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:admin_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

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
          flex: 3,
          child: DashBoardMobileLayout(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
