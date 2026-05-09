import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_routes.dart';
import '../../../../../utils/app_styles.dart';

class ServiceCategory extends StatelessWidget {
  String serviceName;
  String serviceIcon;
  ServiceCategory({
    super.key,
    required this.serviceName,
    required this.serviceIcon,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.searchResultScreen);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(serviceIcon , width: 50 , height: 50 ,),
              SizedBox(height: height * 0.01),
              Text(serviceName, style: AppStyles.RobotoMedium22DarkBlack),
            ],
          )
        ),
      ),
    );
  }
}