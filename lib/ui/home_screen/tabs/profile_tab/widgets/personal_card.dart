import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../l10n/app_localizations.dart';
import '../../../../../utils/app_assets.dart';
import '../../../../../utils/app_styles.dart';

class PersonalCard extends StatelessWidget {
  const PersonalCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: width*0.038 , vertical: height*0.029),
      padding: EdgeInsets.symmetric(horizontal: width*0.038 , vertical: height*0.017),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(AppAssets.boyImage),
              ),

            ],
          ) ,
          SizedBox(width: width*0.056,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "User Name" ,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 14),
              ) ,
              Text(
                AppLocalizations.of(context)!.phone_number ,
                style: AppStyles.RobotoBold10Grey,
              ) ,
              Text(
                "+32 784474744" ,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
              ),
              Text(
                AppLocalizations.of(context)!.email ,
                style: AppStyles.RobotoBold10Grey,
              ),
              Text(
                "emailuser@gmail.com" ,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
              ),
              Text(
                AppLocalizations.of(context)!.address,
                style: AppStyles.RobotoBold10Grey,
              ),
              Text(
                "State\nCity , Country" ,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
              )
            ],
          ) ,
         Spacer(),
          IconButton(
              onPressed: (){
                // todo : navigate to edit profile screen
              },
              icon: SvgPicture.asset(
                AppAssets.editPenIcon,
                color: Theme.of(context).indicatorColor,
              )
          )
        ],
      ),
    );
  }
}
