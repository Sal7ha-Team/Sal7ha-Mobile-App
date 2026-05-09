import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/custom_buttom.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../../home_screen/home_screen.dart';

class CarDetails extends StatelessWidget {
  CarDetails({super.key});
  final TextEditingController makeController = TextEditingController();
  final TextEditingController madeController = TextEditingController();
  final TextEditingController fuelTypeController = TextEditingController();
  final TextEditingController yearOfManufactureController = TextEditingController();
  final TextEditingController transmissionTypeController = TextEditingController();
  final TextEditingController licensePlateNumberController = TextEditingController();
  final TextEditingController vehicleIdentificationNumberController =TextEditingController();
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
                      suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      borderWidth: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return AppLocalizations.of(
                            context,
                          )!.oops_do_not_miss_this_field;
                        }
                        return null;
                      },
                      controller: makeController,
                      labelText: AppLocalizations.of(context)!.make,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: height * 0.02),
                    CustomTextFormField(
                      suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      borderWidth: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return AppLocalizations.of(
                            context,
                          )!.oops_do_not_miss_this_field;
                        }
                        return null;
                      },
                      controller: madeController,
                      labelText: AppLocalizations.of(context)!.made,
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
                            controller: fuelTypeController,
                            labelText: AppLocalizations.of(context)!.fuel_type,
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
                            controller: yearOfManufactureController,
                            labelText: AppLocalizations.of(
                              context,
                            )!.year_of_manufacture,
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
                      suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      borderWidth: 2,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return AppLocalizations.of(
                            context,
                          )!.oops_do_not_miss_this_field;
                        }
                        return null;
                      },
                      controller: transmissionTypeController,
                      labelText: AppLocalizations.of(
                        context,
                      )!.transmission_type,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: height * 0.02),
                    CustomTextFormField(
                      suffixIcon: Icon(Icons.qr_code_scanner_outlined),
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
                      controller: licensePlateNumberController,
                      labelText: AppLocalizations.of(
                        context,
                      )!.license_plate_number,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(height: height * 0.02),
                    CustomTextFormField(
                      suffixIcon: Icon(Icons.qr_code_scanner_outlined),
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
                      controller: vehicleIdentificationNumberController,
                      labelText: AppLocalizations.of(
                        context,
                      )!.vehicle_identification_number,
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      colorBorder: Theme.of(context).focusColor,
                      isFilled: false,
                      inputStyle: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              CustomButtom(
                onPressed: () {
                  // todo: navigate to Home Screen
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (Route<dynamic> route) => false,
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
