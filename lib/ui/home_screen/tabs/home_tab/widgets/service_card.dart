import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_styles.dart';


class ServiceCard extends StatelessWidget {
  String serviceName;
  String serviceIcon;


  ServiceCard({
    required this.serviceName,
    required this.serviceIcon,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.28,
      margin: EdgeInsets.only(right: width * 0.03),
      padding: EdgeInsets.only(
        left: width * 0.05,
        right: width * 0.05,
        top: height * 0.02,
      ),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.02,
                vertical: height * 0.01,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: SvgPicture.asset(serviceIcon),
            ),
            SizedBox(height: height * 0.01),
            Text(serviceName, style: AppStyles.RobotoSemiBold12DarkBlack),
          ],
        ),
      ),
    );
  }
}
