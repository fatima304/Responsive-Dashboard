import 'package:admin_dashboard/Widgets/all_expenses.dart';
import 'package:admin_dashboard/Widgets/quik_invoice.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashboard/Widgets/custom_drawer.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          height: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              ),
              Expanded(
                child: QuikInvoice(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
