import 'package:admin_dashboard/models/drawer_item_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListViewBuilder extends StatefulWidget {
  const DrawerItemsListViewBuilder({
    super.key,
  });

  @override
  State<DrawerItemsListViewBuilder> createState() =>
      _DrawerItemsListViewBuilderState();
}

class _DrawerItemsListViewBuilderState
    extends State<DrawerItemsListViewBuilder> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransactions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
