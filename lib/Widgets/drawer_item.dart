import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:admin_dashboard/utils/app_style.dart';
import 'package:admin_dashboard/models/drawerItemModel.dart';

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
    return Column(
      children: [
        ListTile(
          leading: SvgPicture.asset(
            drawerItemModel.image,
          ),
          title: Text(
            drawerItemModel.title,
            style: AppStyles.styleMedium16,
          ),
        ),
      ],
    );
  }
}
