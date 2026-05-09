import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_styles.dart';

class AboutShopProfileRow extends StatelessWidget {
  String title;
  String iconPath;
  String subtitle;
  bool isLast;
  AboutShopProfileRow({
    super.key,
    this.isLast = false,
    required this.title,
    required this.iconPath,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.038),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                iconPath,
                height: height * 0.02,
                width: width * 0.05,
                color: Theme.of(context).indicatorColor,
              ),
              SizedBox(width: width * 0.01),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: height * 0.0059),
          Text(
            subtitle,
            style: AppStyles.RobotoSemiBold10Grey.copyWith(fontSize: 12),
          ),
          SizedBox(height: height * 0.0059),

          if (!isLast) Divider(color: Theme.of(context).focusColor),
        ],
      ),
    );
  }
}
