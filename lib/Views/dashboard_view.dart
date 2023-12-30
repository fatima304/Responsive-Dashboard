import 'package:flutter/material.dart';
import 'package:admin_dashboard/Widgets/adaptive_layout_widget.dart';
import 'package:admin_dashboard/Widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardLayout(),
      ),
    );
  }
}
