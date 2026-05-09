import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../l10n/app_localizations.dart';
import '../../../../../utils/app_assets.dart';
import '../../../../../utils/app_colors.dart';

class ProfileControlls extends StatelessWidget {
  const ProfileControlls({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: width*0.038),
      padding: EdgeInsets.symmetric(horizontal: width*0.03 , vertical: height*0.02),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AppAssets.visaCardIcon,
                color: Theme.of(context).indicatorColor,
              ),
              SizedBox(width: width*0.03,),
              Text(
                AppLocalizations.of(context)!.highest_rated,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded , color: AppColors.grey)

            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: height*0.007),
            child: Divider(
              color: Theme.of(context).focusColor,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppAssets.historyClockIcon,
                color: Theme.of(context).indicatorColor,
              ),
              SizedBox(width: width*0.03,),
              Text(
                AppLocalizations.of(context)!.booking_history,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded , color: AppColors.grey)

            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: height*0.007),
            child: Divider(
              color: Theme.of(context).focusColor,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppAssets.girlIcon,
                color: Theme.of(context).indicatorColor,
              ),
              SizedBox(width: width*0.03,),
              Text(
                AppLocalizations.of(context)!.refer_a_friend,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded , color: AppColors.grey)

            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: height*0.007),
            child: Divider(
              color: Theme.of(context).focusColor,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppAssets.settingsIcon,
                color: Theme.of(context).indicatorColor,
              ),
              SizedBox(width: width*0.03,),
              Text(
                AppLocalizations.of(context)!.settings,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded , color: AppColors.grey)

            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: height*0.007),
            child: Divider(
              color: Theme.of(context).focusColor,
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                AppAssets.customerSupportIcon,
                color: Theme.of(context).indicatorColor,
              ),
              SizedBox(width: width*0.03,),
              Text(
                AppLocalizations.of(context)!.help_and_support,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_rounded , color: AppColors.grey)

            ],
          ),


        ],
      ),
    );
  }
}
