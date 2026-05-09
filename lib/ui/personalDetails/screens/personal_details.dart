import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/custom_buttom.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'car_details.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController surNameController = TextEditingController();

  TextEditingController dayController = TextEditingController();

  TextEditingController monthController = TextEditingController();

  TextEditingController yearController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController streetAddressController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController zipCodeController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        title: Text(
          AppLocalizations.of(context)!.personal_details,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.04,
            vertical: height * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
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
                      controller: firstNameController,
                      labelText: AppLocalizations.of(context)!.first_name,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
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
                      controller: surNameController,
                      labelText: AppLocalizations.of(context)!.sur_name,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            keyBoardType: TextInputType.number,
                            borderWidth: 2,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return AppLocalizations.of(
                                  context,
                                )!.oops_do_not_miss_this_field;
                              }
                              return null;
                            },
                            controller: dayController,
                            labelText: AppLocalizations.of(context)!.day,
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            colorBorder: Theme.of(context).focusColor,
                            isFilled: false,
                            inputStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
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
                            onTap: () {
                              // todo : Drop down Month Calender
                            },
                            controller: monthController,
                            labelText: AppLocalizations.of(context)!.month,
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            colorBorder: Theme.of(context).focusColor,
                            isFilled: false,
                            inputStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Expanded(
                          child: CustomTextFormField(
                            keyBoardType: TextInputType.number,

                            borderWidth: 2,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return AppLocalizations.of(
                                  context,
                                )!.oops_do_not_miss_this_field;
                              }
                              return null;
                            },
                            controller: yearController,
                            labelText: AppLocalizations.of(context)!.year,
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            colorBorder: Theme.of(context).focusColor,
                            isFilled: false,
                            inputStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
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
                      controller: genderController,
                      labelText: AppLocalizations.of(context)!.gender,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: height * 0.02),
                    // todo : phone Number
                    CustomTextFormField(
                      keyBoardType: TextInputType.phone,
                      borderWidth: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return AppLocalizations.of(
                            context,
                          )!.oops_do_not_miss_this_field;
                        }
                        return null;
                      },
                      controller: phoneNumberController,
                      labelText: AppLocalizations.of(context)!.phone_number,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: height * 0.02),
                    CustomTextFormField(
                      keyBoardType: TextInputType.streetAddress,
                      borderWidth: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return AppLocalizations.of(
                            context,
                          )!.oops_do_not_miss_this_field;
                        }
                        return null;
                      },
                      controller: streetAddressController,
                      labelText: AppLocalizations.of(context)!.street_address,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
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
                      controller: cityController,
                      labelText: AppLocalizations.of(context)!.country,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
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
                            controller: cityController,
                            labelText: AppLocalizations.of(context)!.city,
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            colorBorder: Theme.of(context).focusColor,
                            isFilled: false,
                            inputStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          ),
                        ),
                        SizedBox(width: width * 0.05),
                        Expanded(
                          child: CustomTextFormField(
                            keyBoardType: TextInputType.number,
                            borderWidth: 2,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return AppLocalizations.of(
                                  context,
                                )!.oops_do_not_miss_this_field;
                              }
                              return null;
                            },
                            controller: zipCodeController,
                            labelText: AppLocalizations.of(context)!.zip_code,
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            colorBorder: Theme.of(context).focusColor,
                            isFilled: false,
                            inputStyle: Theme.of(
                              context,
                            ).textTheme.headlineMedium,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              CustomButtom(
                onPressed: () {
                  // todo: navigate to Car details Screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CarDetails()),
                  );
                },
                text: AppLocalizations.of(context)!.next,
                textStyle: Theme.of(context).textTheme.labelSmall,
              ),
              SizedBox(height: height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
