import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../utils/app_assets.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_styles.dart';


class BookCard extends StatelessWidget {
  String state;
  Color stateColor;
  String shopName;
  String fixType;

   BookCard({
     super.key,
     required this.state,
     required this.stateColor,
     this.shopName = "Shop Name",
     this.fixType = "Fix Type"
   });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width*0.03 , vertical: height*0.015),
      decoration: BoxDecoration(
        color: Theme.of(context).hoverColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: height*0.04,
            decoration: BoxDecoration(
              color: stateColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    state,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height*0.015,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: width*0.04),
               child: CircleAvatar(
                 radius: 35,
                 backgroundColor: AppColors.grey,
                 child: SvgPicture.asset(AppAssets.engineIcon),
               ),
             ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      shopName,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
                  ),
                  SizedBox(height: height*0.006,),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.fixIcon),
                      SizedBox(width: width*0.01,),
                      Text(
                          fixType,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12),

                      )
                    ],
                  ),
                  SizedBox(height: height*0.006,),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.calenderIcon),
                      SizedBox(width: width*0.0076,),
                      Text(
                          "20.01.26",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12),

                      ),
                      SizedBox(width: 20,),
                      SvgPicture.asset(AppAssets.timeSandIcon),
                      SizedBox(width: width*0.0076,),
                      Text(
                          "09:00 AM",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 12),

                      ),

                    ],
                  ),
                  SizedBox(height: height*0.02,),
                ],

              )
            ],
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          side: WidgetStatePropertyAll(
                              BorderSide(
                                  color: AppColors.yellow,
                                  width: 2
                              )
                          ),
                          elevation: WidgetStatePropertyAll(0),
                          backgroundColor: WidgetStatePropertyAll(AppColors.transparent)
                      ),
                      onPressed: (){},
                      child: Text(
                          "Reschedule",
                        style: AppStyles.Roboto12Regularyellow,
                      )
                  ),
                ),
                SizedBox(width: width*0.01,),
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(0),
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          backgroundColor: WidgetStatePropertyAll(AppColors.yellow)
                      ),
                      onPressed: (){},
                      child: Text(
                          "Book Fixer",
                        style: AppStyles.Roboto12Regularyellow.copyWith(color: AppColors.white),
                      )
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.01,)


        ],
      ),
    );
  }
}
