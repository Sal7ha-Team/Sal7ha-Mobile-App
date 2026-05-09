import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class ReviewCardWidget extends StatefulWidget {
  ReviewCardWidget({super.key});

  @override
  State<ReviewCardWidget> createState() => ReviewCardWidgetState();
}

class ReviewCardWidgetState extends State<ReviewCardWidget> {
  bool isExpanded = false;

  final String fullText =
      'I had an excellent experience with this repair shop from start to finish. '
      'The staff were very welcoming and took the time to explain what was wrong '
      'with my car in simple terms. They gave me a clear estimate before starting '
      'the work and finished the repair earlier than expected. My car has been '
      'running smoothly ever since, and I really appreciate their honesty...';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.8,
      padding: EdgeInsets.symmetric(
        vertical: height * 0.01,
        horizontal: width * 0.03,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).disabledColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Name + date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Becky Johnson',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '2 days ago',
                    style: AppStyles.Roboto12Medium.copyWith(
                      fontSize: 10,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),

              // Stars
              Row(
                children: List.generate(
                  5,
                  (_) => SvgPicture.asset(
                    AppAssets.starRateIcon,
                    height: height * 0.017,
                    width: width * 0.038,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 12),

          // Review text
          Text(
            fullText,
            maxLines: isExpanded ? null : 5,
            overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 8),

          // Show more button
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => setState(() => isExpanded = !isExpanded),
              child: Text(
                isExpanded ? AppLocalizations.of(context)!.show_less : AppLocalizations.of(context)!.show_more,
                style: AppStyles.Roboto12Medium.copyWith(
                  fontSize: 10,
                  color: AppColors.yellow,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
