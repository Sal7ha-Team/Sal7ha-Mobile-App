import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../../widgets/custom_buttom.dart';
import '../../personalDetails/screens/personal_details.dart';

class ThirdOnBoarding extends StatelessWidget {
  const ThirdOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hieght = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.04,
            vertical: hieght * 0.07,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.thirdOnBoardingImage),
              SizedBox(height: hieght * 0.04),
              Center(
                child: Text(
                  AppLocalizations.of(context)!.get_started,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: hieght * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      AppLocalizations.of(
                        context,
                      )!.enter_your_personal_car_details_to_have_better_experience,
                      textStyle: AppStyles.InterBold16white.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: hieght * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(backgroundColor: Color(0x50FFB700), radius: 8),
                  SizedBox(width: width * 0.01),
                  CircleAvatar(backgroundColor: Color(0x50FFB700), radius: 8),
                  SizedBox(width: width * 0.01),
                  CircleAvatar(backgroundColor: AppColors.yellow, radius: 8),
                ],
              ),
              Spacer(),
              CustomButtom(
                onPressed: () {
                  Navigator.pushReplacement(context , MaterialPageRoute(builder: (context) => PersonalDetails()));
                },
                text: AppLocalizations.of(context)!.get_started,
                textStyle: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
