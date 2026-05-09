import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class CategoriesBloc extends StatelessWidget {
  final String title;
  final String subTitle1;

  final String subTitle2;

  final String subTitle3;

  final String subTitle4;

  CategoriesBloc({
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
    required this.subTitle3,
    required this.subTitle4,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: Theme.of(context).canvasColor,
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: width*0.02 , vertical: height*0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelSmall
            ),
            Row(
              children: [
                Text(subTitle1,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded , color: Theme.of(context).focusColor),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(subTitle2,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded ,color: Theme.of(context).focusColor),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(subTitle3,
                  style: Theme.of(context).textTheme.bodySmall,),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded ,color: Theme.of(context).focusColor),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(subTitle4,
                  style: Theme.of(context).textTheme.bodySmall,),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded ,color: Theme.of(context).focusColor),
              ],
            ),
            Divider(),
            TextButton(
              onPressed: (){
                // todo : navigate to see more screen
              },
              child: Text(AppLocalizations.of(context)!.see_more ,
              style: AppStyles.RobotoMedium14offWhite.copyWith(
                color: AppColors.yellow
              ),)
            )
          ],
        ),
      ),
    );
  }
}
