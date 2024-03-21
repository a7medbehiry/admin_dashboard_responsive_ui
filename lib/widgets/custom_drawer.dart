import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/widgets/drawer_info.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          DrawerInfo(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
