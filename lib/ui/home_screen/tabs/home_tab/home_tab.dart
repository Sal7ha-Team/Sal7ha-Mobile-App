import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/ui/home_screen/tabs/home_tab/widgets/deal_card.dart';
import 'package:graduation/ui/home_screen/tabs/home_tab/widgets/recent_services.dart';
import 'package:graduation/ui/home_screen/tabs/home_tab/widgets/service_card.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_routes.dart';
import '../../../../utils/app_styles.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../../filters_screens/filters_screen.dart';
import '../../../searchScreen/view_all_services_screen.dart';


class HomeTab extends StatelessWidget {
  TextEditingController SearchController = TextEditingController();
  HomeTab({super.key});



  @override
  Widget build(BuildContext context) {
    List<DealCard> dealCards = [
      DealCard(
        title: AppLocalizations.of(context)!.try_out_services,
        subTitle: AppLocalizations.of(context)!.find_the_best_fixers,
        imageUrl: AppAssets.daelCard_1,
      ),
      DealCard(
        title: AppLocalizations.of(context)!.order_some_goods,
        subTitle: AppLocalizations.of(context)!.buy_from_our_best_suppliers,
        imageUrl: AppAssets.daelCard_1,
      ),
    ];
    List<ServiceCard> serviceCards = [
      ServiceCard(
        serviceName: AppLocalizations.of(context)!.oil,
        serviceIcon: AppAssets.oilGalonIcon,
      ),
      ServiceCard(
        serviceName: AppLocalizations.of(context)!.engine,
        serviceIcon: AppAssets.engineIcon,
      ),
      ServiceCard(
        serviceName: AppLocalizations.of(context)!.painting,
        serviceIcon: AppAssets.paintIcon,
      ),
      ServiceCard(
        serviceName: AppLocalizations.of(context)!.suspension,
        serviceIcon: AppAssets.suspentionIcon,
      ),
      ServiceCard(
        serviceName: AppLocalizations.of(context)!.wheels,
        serviceIcon: AppAssets.wheelIcon,
      ),
      ServiceCard(
        serviceName: AppLocalizations.of(context)!.battery,
        serviceIcon: AppAssets.batteryIcon,
      ),
    ];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.locationPinIcon),
                SizedBox(width: width * 0.03),
                Text("User_Location", style: TextStyle(color: AppColors.white)),
                SizedBox(width: width * 0.03),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: AppColors.white,
                ),
              ],
            ),
            IconButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  Theme.of(context).indicatorColor,
                ),
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).primaryColor,
                ),
              ),
              onPressed: () {
                // todo : open notifications page
                Navigator.pushNamed(context, AppRoutes.notificationsScreen);

              },
              icon: SvgPicture.asset(
                AppAssets.notificationIcon,
                color: Theme.of(context).indicatorColor,
                width: width * 0.05,
                height: height * 0.03,
              ),
            ),
          ],
        ),
        bottom: AppBar(
          surfaceTintColor: AppColors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          toolbarHeight: height * 0.25,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: AppLocalizations.of(context)!.lets,
                      style: AppStyles.InterSemiBold26yellow,
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.find_your_needed,
                      style: AppStyles.InterSemiBold26white,
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.service_here,
                      style: AppStyles.InterSemiBold26yellow,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderRadius: 50,
                borderWidth: 0,
                isFilled: true,
                filledColor: AppColors.grey2,
                hintText: AppLocalizations.of(context)!.search_for_services,
                hintStyle: AppStyles.Roboto14Regularwhite.copyWith(fontSize: 12),
                prefixIcon: Icon(Icons.search_outlined, color: AppColors.white),
                controller: SearchController,
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.01,
                    vertical: height * 0.003,
                  ),
                  child: IconButton(
                    onPressed: () {
                      // to do : Navigation to filteration screen
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FiltersScreen()));

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.yellow,
                      ),
                    ),
                    icon: SvgPicture.asset(AppAssets.searchFilterIcon),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.recent_services,
                    style: Theme.of(context).textTheme.titleMedium
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // to do : Navigation to all Recently  screen
                    },
                    child: Text(
                      AppLocalizations.of(context)!.view_all,
                      style: AppStyles.RobotoSemiBold16yellow ,
                    ),
                  ),
                ],
              ),
              RecentServices(
                title: "Circle K",
                location: "215750, Верхнеднепровский, Smolensk, Russia",
                imageUrl: AppAssets.circleKLogo,
              ),
              RecentServices(
                title: "Mobile",
                location: "502 N New Jersey St, Indianapolis, IN 46204e",
                imageUrl: AppAssets.mobileLogo,
              ),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.service_category,
                      style: Theme.of(context).textTheme.titleMedium
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // to do : Navigation to all services screen
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllServicesScreen()));
                    },
                    child: Text(
                      AppLocalizations.of(context)!.view_all,
                      style: AppStyles.RobotoSemiBold16yellow ,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.13,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => serviceCards[index],
                  itemCount: serviceCards.length,
                ),
              ),
              SizedBox(height: height * 0.02),
              Text(
                AppLocalizations.of(context)!.find_the_best_deal,
                  style: Theme.of(context).textTheme.titleMedium
              ),
              SizedBox(height: height * 0.02),
              SizedBox(
                height: height * 0.24,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => dealCards[index],
                  itemCount: dealCards.length,
                ),
              ),

              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
