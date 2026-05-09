import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../widgets/rating_card.dart';
import '../widgets/review_card_widget.dart';
import 'all_reviews_screen.dart';

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.02,
      ),
      child: Column(
        children: [
          RatingCard(),
          SizedBox(height: height * 0.02),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.reviews,
                style: AppStyles.Roboto12Medium.copyWith(color: AppColors.grey),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  // TODO : Navigate to all reviews Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllReviewsScreen()),
                  );
                },
                child: Text(
                  AppLocalizations.of(context)!.see_all,
                  style: AppStyles.Roboto12Medium.copyWith(
                    color: AppColors.yellow,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.25,
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  SizedBox(width: width * 0.05),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ReviewCardWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
