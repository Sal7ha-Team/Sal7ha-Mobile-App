import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:graduation/ui/auth/widgets/login/logInBottomSheet.dart';
import 'package:graduation/ui/auth/widgets/register/signUpBottomSheet.dart';
import 'package:provider/provider.dart';
import '../../providers/language_provider.dart';
import '../../providers/theme_provider.dart';
import '../../l10n/app_localizations.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import '../../widgets/custom_buttom.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // Switch Themeing Icons
  WidgetStateProperty<Icon> themeingIcons =
      WidgetStateProperty<Icon>.fromMap(<WidgetStatesConstraint, Icon>{
        WidgetState.selected: Icon(
          Icons.dark_mode_rounded,
          color: AppColors.black,
        ),
        WidgetState.any: Icon(Icons.wb_sunny_rounded, color: AppColors.white),
      });

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var languageProvider = Provider.of<LanguageProvider>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            themeProvider.isDarkMode()
                ? Image.asset(
                    AppAssets.logoDark,
                    width: width * 0.38,
                    height: height * 0.3,
                  )
                : Image.asset(
                    AppAssets.logoLight,
                    width: width * 0.38,
                    height: height * 0.3,
                  ),
            SizedBox(height: height * 0.03),
            Text(
              textAlign: TextAlign.center,
              AppLocalizations.of(context)!.car_service,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: height * 0.05),
            themeProvider.isDarkMode()
                ? Image.asset(AppAssets.lightName)
                : Image.asset(AppAssets.darkName),
            SizedBox(height: height * 0.03),
            AnimatedTextKit(
              key: ValueKey(languageProvider.appLanguage),
              animatedTexts: [
                TypewriterAnimatedText(
                  textAlign: TextAlign.center,
                  AppLocalizations.of(
                    context,
                  )!.the_smart_way_to_repair_rated_priced_mapped,
                  textStyle: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          
            SizedBox(height: height * 0.05),
            TextButton(
              onPressed: () {
                // todo : Open SignIn Bottom Sheet
                SignUp(context);
              },
              child: Text(
                AppLocalizations.of(context)!.dont_have_an_account,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColors.grey),
              ),
            ),
            SizedBox(height: height * 0.03),
            CustomButtom(
              onPressed: () {
                // todo : Open SignIn Bottom Sheet
                SignUp(context);
              },
              text: AppLocalizations.of(context)!.sign_up,
              textStyle: AppStyles.RobotoMedium16white.copyWith(
                color : Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.click_here_to,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                TextButton(
                  onPressed: () {
                    // todo : Open LogIn Bottom Sheet
                    logIn(context);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.login,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(color: AppColors.yellow),
                  ),
                ),
              ],
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(
                    activeColor: AppColors.yellow,
                    inactiveTrackColor: AppColors.white,
                    thumbIcon: themeingIcons,
                    value: themeProvider.isDarkMode(),
                    onChanged: (value) {
                      themeProvider.changeTheme(
                        themeProvider.isDarkMode()
                            ? ThemeMode.light
                            : ThemeMode.dark,
                      );
                    },
                  ),
                  Switch(
                    activeColor: AppColors.yellow,
                    inactiveTrackColor: AppColors.white,
                    activeThumbImage: AssetImage(AppAssets.egypt_flag),
                    inactiveThumbImage: AssetImage(AppAssets.USA_flag),
                    value: languageProvider.appLanguage == 'ar' ? true : false,
                    onChanged: (value) {
                      languageProvider.changeLanguage(
                        languageProvider.appLanguage == 'ar' ? 'en' : 'ar',
                      );
                      print(languageProvider.appLanguage);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void SignUp(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Theme.of(context).primaryColor,
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [Signupbottomsheet()],
        );
      },
    );
  }

  void logIn(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).primaryColor,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) {
        return Loginbottomsheet();
      },
    );
  }
}
