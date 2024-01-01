import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashboard/utils/app_style.dart';
import 'package:admin_dashboard/Widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOptions(),
      ],
    );
  }
}
