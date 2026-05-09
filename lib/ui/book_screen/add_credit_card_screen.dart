import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../l10n/app_localizations.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';
import '../../widgets/custom_buttom.dart';
import '../../widgets/custom_text_form_field.dart';

class AddCreditCardScreen extends StatefulWidget {
  const AddCreditCardScreen({super.key});

  @override
  State<AddCreditCardScreen> createState() => _AddCreditCardScreenState();
}

class _AddCreditCardScreenState extends State<AddCreditCardScreen> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController monthYearController = TextEditingController();
  final TextEditingController securityCodeController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController streetController = TextEditingController();
  final TextEditingController suiteController = TextEditingController();
  final TextEditingController townController = TextEditingController();
  final TextEditingController provinceController = TextEditingController();
  final TextEditingController postalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        surfaceTintColor: AppColors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).indicatorColor,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.add_credit_card,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.038 * width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                prefixIcon: SvgPicture.asset(AppAssets.creditCardIcon),
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: cardNumberController,
                labelText: AppLocalizations.of(context)!.card_number,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      borderWidth: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return AppLocalizations.of(
                            context,
                          )!.oops_do_not_miss_this_field;
                        }
                        return null;
                      },
                      controller: monthYearController,
                      //TODO : Make it show calender for month and year
                      labelText: "MM/YY",
                      labelStyle: Theme.of(context).textTheme.displayMedium,
                      colorBorder: AppColors.darkGrey,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  SizedBox(width: width * 0.05),
                  Expanded(
                    child: CustomTextFormField(
                      borderWidth: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return AppLocalizations.of(
                            context,
                          )!.oops_do_not_miss_this_field;
                        }
                        return null;
                      },
                      controller: securityCodeController,
                      labelText: AppLocalizations.of(context)!.security_code,
                      labelStyle: Theme.of(context).textTheme.displayMedium,
                      colorBorder: AppColors.darkGrey,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: cardHolderController,
                labelText: AppLocalizations.of(context)!.cardholder_name,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: countryController,
                labelText: AppLocalizations.of(context)!.country_region,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: streetController,
                labelText: AppLocalizations.of(context)!.street_address,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: suiteController,
                labelText: AppLocalizations.of(context)!.suite_apt,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: townController,
                labelText: AppLocalizations.of(context)!.town_city,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: provinceController,
                labelText: AppLocalizations.of(context)!.state_province,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.02),
              CustomTextFormField(
                borderWidth: 2,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return AppLocalizations.of(
                      context,
                    )!.oops_do_not_miss_this_field;
                  }
                  return null;
                },
                controller: postalController,
                labelText: AppLocalizations.of(context)!.postal_code,
                labelStyle: Theme.of(context).textTheme.displayMedium,
                colorBorder: AppColors.darkGrey,
                isFilled: false,
                inputStyle: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: height * 0.03),
              CustomButtom(
                onPressed: () {},
                text: AppLocalizations.of(context)!.save_and_continue,
                textStyle: AppStyles.Roboto14RegularDarkBlack,
              ),
              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
