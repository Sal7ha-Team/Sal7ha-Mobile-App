import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation/ui/searchScreen/widgets/categories_bloc.dart';

import '../../l10n/app_localizations.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import '../../widgets/custom_text_form_field.dart';

class ViewAllServicesScreen extends StatefulWidget {

  const ViewAllServicesScreen({super.key});

  @override
  State<ViewAllServicesScreen> createState() => _ViewAllServicesScreenState();
}

class _ViewAllServicesScreenState extends State<ViewAllServicesScreen> {
   TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Theme.of(context).indicatorColor,
            ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(AppLocalizations.of(context)!.search ,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.02 , vertical: height*0.001),
              child: CustomTextFormField(
                borderRadius: 10,
                borderWidth: 0,
                isFilled: true,
                filledColor: Theme.of(context).canvasColor,
                hintText: AppLocalizations.of(context)!.search_for_services,
                hintStyle: AppStyles.Roboto14Regularwhite.copyWith(fontSize: 12),
                prefixIcon: Icon(Icons.search, color: AppColors.grey),
                controller: SearchController,
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.01,
                    vertical: height * 0.003,
                  ),
                  child: IconButton(
                    onPressed: () {
                      // to do : Navigation to filtration screen
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(AppColors.yellow),
                    ),
                    icon: SvgPicture.asset(AppAssets.searchFilterIcon),
                  ),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            CategoriesBloc(
              title: "Oil Services & Replacement",
              subTitle1: "Engine Oil Change",
              subTitle2: "Oil Filter Replacement",
              subTitle3: "Synthetic Oil Service",
              subTitle4: "Conventional Oil Service",
            ),
            SizedBox(height: height * 0.02),
            CategoriesBloc(
              title: "Oil Services & Replacement",
              subTitle1: "Engine Oil Change",
              subTitle2: "Oil Filter Replacement",
              subTitle3: "Synthetic Oil Service",
              subTitle4: "Conventional Oil Service",
            ),
            SizedBox(height: height * 0.02),
            CategoriesBloc(
              title: "Oil Services & Replacement",
              subTitle1: "Engine Oil Change",
              subTitle2: "Oil Filter Replacement",
              subTitle3: "Synthetic Oil Service",
              subTitle4: "Conventional Oil Service",
            ),
            SizedBox(height: height * 0.02),
            CategoriesBloc(
              title: "Oil Services & Replacement",
              subTitle1: "Engine Oil Change",
              subTitle2: "Oil Filter Replacement",
              subTitle3: "Synthetic Oil Service",
              subTitle4: "Conventional Oil Service",
            ),
            SizedBox(height: height * 0.02),


          ],
        ),
      ),
    );
  }
}
