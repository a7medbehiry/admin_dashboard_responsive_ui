import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/models/user_info_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/widgets/active_and_inactive_drawer_item.dart';
import 'package:admin_dashboard/widgets/drawer_info.dart';
import 'package:admin_dashboard/widgets/drawer_items_sliver_list_builder.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: DrawerInfo(
              userInfoModel: UserInfoModel(image:  Assets.imagesAvatar3, title: 'Lekan Okeowo', subTitle: 'demo@gmail.com'),
            
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListViewBuilder(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
