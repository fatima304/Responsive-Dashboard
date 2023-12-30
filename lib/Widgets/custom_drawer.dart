import 'package:flutter/material.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/Widgets/user_info_list_tile.dart';
import 'package:admin_dashboard/Widgets/customDrawerItemListView.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
          CustomDrawerItemListView()
        ],
      ),
    );
  }
}
