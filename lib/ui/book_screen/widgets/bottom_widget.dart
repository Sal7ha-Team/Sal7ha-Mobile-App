import 'package:flutter/material.dart';
import 'package:graduation/l10n/app_localizations.dart';

import '../../../utils/app_styles.dart';
import '../../../widgets/custom_buttom.dart';
import '../../home_screen/home_screen.dart';


class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: height*0.02,),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.to_pay_now,
                style: Theme.of(context).textTheme.labelSmall!
                    .copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Text(
                "80\$",
                style: Theme.of(context).textTheme.labelSmall!
                    .copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),


              )
            ],
          ),
          SizedBox(height: height*0.02,),
          Row(
            children: [
              Text(
                  AppLocalizations.of(context)!.total_to_pay,
                  style: AppStyles.Roboto14RegularGrey

              ),
              Spacer(),
              Text(
                  "115\$ - 165\$",
                  style: AppStyles.Roboto14RegularGrey


              )
            ],
          ),
          SizedBox(height: height*0.02,),
          CustomButtom(
              onPressed: (){
                // todo : Confirm Choices and Book the Service
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                      (route) => false,
                );
              },
              text: AppLocalizations.of(context)!.confirm_choices,
              textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              )
          )
        ],
      ),
    );
  }
}
