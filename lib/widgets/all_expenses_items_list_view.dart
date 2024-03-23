import 'package:admin_dashboard/models/all_expenses_item_model.dart';
import 'package:admin_dashboard/utils/app_images.dart';
import 'package:admin_dashboard/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int activeIndex = 0;

  final items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;

          return index == 1
              ? Expanded(
                  child: GestureDetector(
                    onTap: () => updateIndex(index),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: AllExpensesItem(
                        itemModel: item,
                        isActive: activeIndex == index,
                      ),
                    ),
                  ),
                )
              : Expanded(
                  child: GestureDetector(
                    onTap: () => updateIndex(index),
                    child: AllExpensesItem(
                      itemModel: item,
                      isActive: activeIndex == index,
                    ),
                  ),
                );
        },
      ).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }
}

  // return ListView.builder(
  //     scrollDirection: Axis.horizontal,
  //     itemCount: items.length,
  //     itemBuilder: (BuildContext context, int index) {
  //       return AllExpensesItem(
  //         itemModel: items[index],
  //       );
  //     },
  //   );