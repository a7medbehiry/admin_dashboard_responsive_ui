import 'package:admin_dashboard/utils/size_config.dart';
import 'package:admin_dashboard/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/widgets/custom_drawer.dart';
import 'package:admin_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:admin_dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';
import '../widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width <  SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
