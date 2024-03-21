import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerInfo extends StatelessWidget {
  final String image, title, subTitle;
  const DrawerInfo({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xfffafafa),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
