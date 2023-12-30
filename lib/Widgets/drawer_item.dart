import 'package:flutter/material.dart';
import 'package:admin_dashboard/models/drawerItemModel.dart';
import 'package:admin_dashboard/Widgets/active&inactive.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isActive,
    required this.drawerItemModel,
  });
  final bool isActive;
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
