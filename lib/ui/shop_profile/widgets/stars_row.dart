import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_assets.dart';

class StarsRow extends StatelessWidget {
  const StarsRow({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        SvgPicture.asset(AppAssets.starRateIcon),
        SizedBox(width: width * 0.01),
        SvgPicture.asset(AppAssets.starRateIcon),
        SizedBox(width: width * 0.01),
        SvgPicture.asset(AppAssets.starRateIcon),
        SizedBox(width: width * 0.01),
        SvgPicture.asset(AppAssets.starRateIcon),
        SizedBox(width: width * 0.01),
        SvgPicture.asset(AppAssets.starRateIcon),
        SizedBox(width: width * 0.01),
      ],
    );
  }
}
