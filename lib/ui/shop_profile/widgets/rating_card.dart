import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';


class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.rating,
          style: AppStyles.Roboto12Medium.copyWith(color: AppColors.grey),
        ),
        SizedBox(height: height * 0.0059),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.038,
            vertical: height * 0.01,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).disabledColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: IntrinsicHeight(
            child: Row(
              children: [
                // Left: Rating
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppAssets.starRateIcon,
                            height: height * 0.018,
                            width: width * 0.04,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '4.8/5',
                            style: Theme.of(
                              context,
                            ).textTheme.labelSmall!.copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "4 ${AppLocalizations.of(context)!.reviews}",
                        style: AppStyles.Roboto12Medium.copyWith(
                          color: AppColors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: width * 0.2),

                // Right: Completion rate
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '100%',
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall!.copyWith(fontSize: 20),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.completion_rate,
                            style: Theme.of(context).textTheme.labelSmall!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.info_outline_rounded,
                            size: 14,
                            color: AppColors.offWhite,
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '64 ${AppLocalizations.of(context)!.jobs}',
                        style: AppStyles.RobotoRegular20Grey.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
