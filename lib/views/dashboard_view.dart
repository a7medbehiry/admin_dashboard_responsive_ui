import 'package:admin_dashboard/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:admin_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';
import '../widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
