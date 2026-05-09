import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation/ui/searchScreen/widgets/tag_widget.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../book_screen/book_screen.dart';
import '../../shop_profile/shop_profile.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.028,
        vertical: height * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            children: [
              // Logo
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(AppAssets.circleKLogo),
              ),
              SizedBox(width: width * 0.025),
              // Title & meta
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Car Service Shop',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    SizedBox(height: height * 0.005),
                    Row(
                      children: [
                        Text(
                          'Electricity',
                          style: AppStyles.Roboto12Medium.copyWith(
                            color: AppColors.grey,
                          ),
                        ),
                        SizedBox(width: width * 0.007),
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: AppColors.grey,
                        ),
                        SizedBox(width: width * 0.007),
                        Text(
                          "\$100/hr",
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall!.copyWith(fontSize: 12),
                        ),
                        SizedBox(width: width * 0.007),
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: AppColors.grey,
                        ),
                        SizedBox(width: width * 0.007),
                        SvgPicture.asset(AppAssets.starRateIcon),
                        SizedBox(width: width * 0.005),
                        Text(
                          '4.8/5',
                          style: AppStyles.Roboto12Medium.copyWith(
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          // Tags
          Row(
            children: [
              TagWidget(
                icon: Icons.workspace_premium_outlined,
                label: 'Experienced',
              ),
              const SizedBox(width: 8),
              TagWidget(
                icon: Icons.emoji_events_outlined,
                label: 'Top-rated',
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          // Description
          Text(
            'Our car repair shop provides reliable and professional automotive services for all types of vehicles. With a team of experienced and certified mechanics, we handle everything...',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: height * 0.017),
          // Action Buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  // todo: Navigation to Shop profile screen
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopProfile()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Color(0xFFE8A020),
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.01,
                      horizontal: width * 0.13,
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.shop_profile,
                    style: AppStyles.Roboto12Regularyellow,
                  ),
                ),
              ),
              SizedBox(width: width * 0.01),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // to do : Navigation to book fixer screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE8A020),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.01,
                      horizontal: width * 0.13,
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.book_fixer,
                    style: AppStyles.Roboto12Regularyellow.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
