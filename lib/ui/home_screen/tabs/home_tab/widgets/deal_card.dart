import 'package:flutter/material.dart';

import '../../../../../utils/app_styles.dart';

class DealCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;

  DealCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl),
          SizedBox(height: height * 0.009),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelSmall
              ),
              Icon(
                Icons.arrow_forward_rounded,
                size: 15,
                color: Theme.of(context).indicatorColor,
              ),
            ],
          ),
          Text(subTitle, style: AppStyles.RobotoMedium14grey2.copyWith(fontSize: 12)),
        ],
      ),
    );
  }
}
