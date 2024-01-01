import 'package:admin_dashboard/Widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashboard/Widgets/all_expenses_header.dart';
import 'package:admin_dashboard/Widgets/expenses_item_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsList(),
        ],
      ),
    );
  }
}
