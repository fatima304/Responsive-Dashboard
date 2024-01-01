import 'package:flutter/material.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/Widgets/all_expenses_item.dart';
import 'package:admin_dashboard/models/ExpensesHeaderModel.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  final items = [
    const ExpensesHeader(
      date: 'April 2022',
      title: 'Balance',
      image: Assets.imagesBalance,
      price: '\$20,129',
    ),
    const ExpensesHeader(
      date: 'April 2022',
      title: 'Income',
      image: Assets.imagesIncome,
      price: '\$20,129',
    ),
    const ExpensesHeader(
      date: 'April 2022',
      title: 'Expenses',
      image: Assets.imagesExpenses,
      price: '\$20,129',
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(
                    () {
                      activeIndex = index;
                      print(activeIndex);
                    },
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: AllExpensesItem(
                  expensesHeader: item,
                  isActive: activeIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(
                    () {
                      activeIndex = index;
                      print(activeIndex);
                    },
                  );
                }
              },
              child: AllExpensesItem(
                expensesHeader: item,
                isActive: activeIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
