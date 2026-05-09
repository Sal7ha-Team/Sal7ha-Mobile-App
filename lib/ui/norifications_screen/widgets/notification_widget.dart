import 'package:flutter/material.dart';

import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';


class NotificationWidget extends StatelessWidget {
  bool unRead;
  NotificationWidget({super.key, required this.unRead});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: height * 0.01),
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.02,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).hintColor,
        border: BoxBorder.all(
          width: 3,
          color: unRead ? AppColors.yellow : AppColors.white,
        ),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(AppAssets.circleKLogo),
          ),
          SizedBox(width: width * 0.04),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Booking Reminder",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Spacer(),
                    if (unRead)
                      CircleAvatar(backgroundColor: Colors.amber, radius: 8),
                  ],
                ),
                SizedBox(height: height * 0.005),
                Text(
                  "Your car service is scheduled for 3Jan at 11:00 AM at Car Serv. Please arrive on time. 🚗",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 9,
                        color: Theme.of(context).indicatorColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
