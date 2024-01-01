import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/ExpensesHeaderModel.dart';
import '../utils/app_style.dart';
import 'all_expenses_item_header.dart';

class NotActiveExpenses extends StatelessWidget {
  const NotActiveExpenses({
    super.key,
    required this.expensesHeader,
  });

  final ExpensesHeader expensesHeader;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: expensesHeader.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expensesHeader.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            expensesHeader.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            expensesHeader.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveExpenses extends StatelessWidget {
  const ActiveExpenses({
    super.key,
    required this.expensesHeader,
  });

  final ExpensesHeader expensesHeader;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149),
            image: expensesHeader.image,
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expensesHeader.title,
            style: AppStyles.styleMedium16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            expensesHeader.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xfffafafa)),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            expensesHeader.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
