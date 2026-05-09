import 'package:flutter/material.dart';
import 'package:graduation/l10n/app_localizations.dart';
import 'package:graduation/ui/shop_profile/tabs/about_tab.dart';
import 'package:graduation/ui/shop_profile/tabs/reviews_tab.dart';
import 'package:graduation/ui/shop_profile/tabs/services_tab.dart';
import 'package:graduation/ui/shop_profile/widgets/shop_profile_tab_bar.dart';
import 'package:graduation/ui/shop_profile/widgets/stars_row.dart';
import 'package:provider/provider.dart';
import '../../providers/language_provider.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import '../book_screen/book_screen.dart';
import '../searchScreen/widgets/tag_widget.dart';

class ShopProfile extends StatefulWidget {
  const ShopProfile({super.key});

  @override
  State<ShopProfile> createState() => _ShopProfileState();
}

class _ShopProfileState extends State<ShopProfile> {
  int selectedTabIndex = 0;

  Widget _buildTabContent() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: switch (selectedTabIndex) {
        0 => AboutTab(),
        1 => ServicesTab(),
        2 => ReviewsTab(),
        _ => const SizedBox(),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    AppAssets.shopProfileCoverImage,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: height * 0.05),
                ],
              ),
              Positioned(
                top: height * 0.17,
                left: languageProvider.appLanguage == 'en' ? width * 0.05 : null,
                right: languageProvider.appLanguage == 'ar' ? width * 0.05 : null,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(AppAssets.circleKLogo),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: languageProvider.appLanguage == 'en' ? width * 0.03 : 0,
                    right: languageProvider.appLanguage == 'ar' ? width * 0.03 : 0,
                    top: height * 0.03,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.01,
                    vertical: height * 0.005,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColors.darkBlack,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.shop_name,
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium!.copyWith(fontSize: 24),
                  ),
                  SizedBox(height: height * 0.0035),
                  Text(
                    AppLocalizations.of(context)!.repair_shop,
                    style: AppStyles.RobotoMedium14grey2.copyWith(
                      color: AppColors.grey,
                    ),
                  ),
                  SizedBox(height: height * 0.0035),
                  Row(
                    children: [
                      StarsRow(),
                      SizedBox(width: width * 0.01),
                      Text(
                        AppLocalizations.of(context)!.number_of_reviews,
                        style: AppStyles.RobotoMedium14grey2.copyWith(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.grey,
                          decorationThickness: 1.5,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  Row(
                    children: [
                      TagWidget(
                        icon: Icons.workspace_premium_outlined,
                        label: AppLocalizations.of(context)!.experience,
                      ),
                      const SizedBox(width: 8),
                      TagWidget(
                        icon: Icons.emoji_events_outlined,
                        label: AppLocalizations.of(context)!.top_rated,
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShopProfileTabBar(
                            onTabSelected: (int index) {
                              setState(() {
                                selectedTabIndex = index;
                              });
                            },
                          ),
                          Expanded(child: _buildTabContent()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: AppColors.yellow,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                              horizontal: width * 0.13,
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.chat,
                            style: AppStyles.Roboto12Regularyellow,
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.01),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 0,
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                              horizontal: width * 0.13,
                            ),
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.book_now,
                            style: AppStyles.Roboto12Regularyellow.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
