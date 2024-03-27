import 'package:flutter/material.dart';
import 'views/dashboard_view.dart';

void main() {
  runApp(
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => const ResponsiveAdminDashboard(),
    // ),
    const ResponsiveAdminDashboard(),
  );
}

class ResponsiveAdminDashboard extends StatelessWidget {
  const ResponsiveAdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      home:  DashboardView(),
    );
  }
}
