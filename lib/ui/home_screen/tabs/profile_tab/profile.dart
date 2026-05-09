import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/ui/home_screen/tabs/profile_tab/widgets/personal_card.dart';
import 'package:graduation/ui/home_screen/tabs/profile_tab/widgets/profile_controlls.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_routes.dart';
import '../../../../utils/app_styles.dart';


class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
     appBar: AppBar(
       backgroundColor: AppColors.transparent,
       title: Text(
         AppLocalizations.of(context)!.profile,
         style: Theme.of(context).textTheme.bodyLarge,
       ),
       actions: [
         GestureDetector(
           onTap: (){
             // todo : LogOut Logic
             Navigator.pushNamedAndRemoveUntil(
                 context,
                 AppRoutes.authRouteName,
                 (Route<dynamic> route) => false,
             );

           },
           child: Padding(
             padding: EdgeInsets.only(right: width*0.05),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SvgPicture.asset(
                     AppAssets.logOutIcon
                 ),
                 SizedBox(width: width*0.025,),
                 Text(
                   AppLocalizations.of(context)!.log_out ,
                   style: AppStyles.RobotoMeduim14Red ,
                 )
               ],
             ),
           ),
         )
       ],
     ),
      body: Column(
        children: [
          PersonalCard(),
          ProfileControlls(),



        ],
      ),
    );
  }
}