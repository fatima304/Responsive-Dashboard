import 'package:flutter/material.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/Widgets/drawer_item.dart';
import 'package:admin_dashboard/models/drawerItemModel.dart';

class CustomDrawerItemListView extends StatefulWidget {
  const CustomDrawerItemListView({
    super.key,
  });

  @override
  State<CustomDrawerItemListView> createState() =>
      _CustomDrawerItemListViewState();
}

class _CustomDrawerItemListViewState extends State<CustomDrawerItemListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesTransactions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesGraph),
    const DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
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
            padding: const EdgeInsets.only(top: 8.0),
            child: DrawerItem(
              isActive: activeIndex == index,
              drawerItemModel: items[index],
            ),
          ),
        );
      },
    );
  }
}
