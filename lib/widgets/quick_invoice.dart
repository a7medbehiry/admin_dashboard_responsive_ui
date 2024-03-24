import 'package:admin_dashboard/widgets/custom_background_container.dart';
import 'package:admin_dashboard/widgets/quick_invoice_form.dart';
import 'package:admin_dashboard/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';
import 'latest_transaction.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 20,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
