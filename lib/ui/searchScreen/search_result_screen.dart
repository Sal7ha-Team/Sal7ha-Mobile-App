import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation/ui/searchScreen/widgets/filters_card.dart';
import 'package:graduation/ui/searchScreen/widgets/shop_card.dart';

import '../../l10n/app_localizations.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_routes.dart';
import '../../utils/app_styles.dart';
import '../../widgets/custom_text_form_field.dart';
import '../filters_screens/filters_screen.dart';


class SearchResultScreen extends StatelessWidget {
  final TextEditingController SearchController = TextEditingController();

   SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:AppBar(
        surfaceTintColor: AppColors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.homeScreen);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          AppLocalizations.of(context)!.search_about_car_services,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 20) ,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CustomTextFormField(
              borderRadius: 10,
              borderWidth: 1,
              isFilled: true,
              filledColor: Theme.of(context).canvasColor,
              hintText: AppLocalizations.of(context)!.search_for_services,
              hintStyle: AppStyles.Roboto14RegularGrey.copyWith(fontSize: 12),
              prefixIcon: Icon(Icons.search_outlined, color: AppColors.grey),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SizedBox(
                height: 30,
                child: Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => FiltersCard(text: "Tag $index"),
                    itemCount: 5,
                    separatorBuilder: (context, index) => const SizedBox(width: 5,),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => ShopCard(),
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(height: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

