import 'package:admin_dashboard/Widgets/active&inactive_expenses.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashboard/models/ExpensesHeaderModel.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expensesHeader, required this.isActive});
  final bool isActive;
  final ExpensesHeader expensesHeader;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpenses(expensesHeader: expensesHeader)
        : NotActiveExpenses(expensesHeader: expensesHeader);
  }
}
