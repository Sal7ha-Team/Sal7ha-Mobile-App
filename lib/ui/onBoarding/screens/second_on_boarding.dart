import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:graduation/ui/onBoarding/screens/third_on_boarding.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';

class SecondOnBoarding extends StatelessWidget {
  const SecondOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hieght = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(
              right: width * 0.09,
              left: width * 0.09,
              top: hieght * 0.1,
              bottom: hieght * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppAssets.secondOnBoardingImage),
                SizedBox(height: hieght * 0.04),
                Text(
                  AppLocalizations.of(context)!.save_time,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: hieght * 0.02),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      AppLocalizations.of(
                        context,
                      )!.save_your_time_and_find_the_best_centers_faster_and_easier,
                      textStyle: AppStyles.InterBold16white.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
                SizedBox(height: hieght * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(backgroundColor: Color(0x50FFB700), radius: 8),
                    SizedBox(width: width * 0.01),
                    CircleAvatar(backgroundColor: AppColors.yellow, radius: 8),
                    SizedBox(width: width * 0.01),
                    CircleAvatar(backgroundColor: Color(0x50FFB700), radius: 8),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // todo : navigate to the seconde onboarding screen
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ThirdOnBoarding(),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.yellow,
                        radius: 25,
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
