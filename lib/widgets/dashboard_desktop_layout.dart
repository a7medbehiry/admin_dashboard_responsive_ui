import 'package:admin_dashboard/widgets/custom_drawer.dart';
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
      ],
    );
  }
}
