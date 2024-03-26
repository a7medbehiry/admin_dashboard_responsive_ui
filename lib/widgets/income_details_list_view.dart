import 'package:admin_dashboard/widgets/income_item_details.dart';
import 'package:flutter/material.dart';

import '../models/income_item_details_model.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  static const items = [
    IncomeItemDetailsModel(
        color: Color(0xff208BC7), title: 'Design service', value: '40%'),
    IncomeItemDetailsModel(
        color: Color(0xff4DB7F2), title: 'Design product', value: '25%'),
    IncomeItemDetailsModel(
        color: Color(0xff064060), title: 'Product royalti', value: '20%'),
    IncomeItemDetailsModel(
        color: Color(0xffE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return IncomeItemDetails(incomeItemDetailsModel: items[index]);
      },
    );
  }
}
