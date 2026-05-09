import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../l10n/app_localizations.dart';
import '../../../models/car_model.dart';
import '../../../models/oil_brand_model.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../../widgets/custom_buttom.dart';
import '../../../widgets/custom_text_form_field.dart';
import '../widgets/oil_bottom_sheet.dart';
import '../widgets/userCarBottomSheet.dart';

class FirstTab extends StatefulWidget {
  VoidCallback onPressed;

  FirstTab({super.key, required this.onPressed});

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  OilBrandModel? selectedOil;
  CarModel? selectedCar;
  TextEditingController detailsController = TextEditingController();
  bool value = true;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.yellow,
              // header background & selected day circle
              onPrimary: Colors.white,
              // text on header & selected day
              surface: Theme.of(context).primaryColor,
              // calendar background
              onSurface: Theme.of(context).indicatorColor,
            ),
            textTheme: TextTheme(
              headlineMedium: TextStyle(
                // year/month header text
                color: AppColors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              titleLarge: TextStyle(
                // "Select date" title
                color: AppColors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              bodyLarge: TextStyle(
                // day numbers
                color: AppColors.darkBlack,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              bodyMedium: TextStyle(
                // weekday labels (Mon, Tue...)
                color: AppColors.darkBlack,
                fontSize: 12,
              ),
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.yellow, // OK & CANCEL button color
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            dialogTheme: DialogThemeData(
              shape: RoundedRectangleBorder(
                // rounded calendar dialog
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() => selectedDate = picked);
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            timePickerTheme: TimePickerThemeData(
              dayPeriodColor: AppColors.yellow,
            ),
            colorScheme: ColorScheme.light(
              primary: AppColors.yellow, // clock hand & selected time
              onPrimary: AppColors.white, // text on selected hour/minute
              surface: Theme.of(context).primaryColor, // dialog background
              onSurface: Theme.of(context).indicatorColor, // unselected numbers
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColors.yellow, // OK & CANCEL buttons
                textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            dialogTheme: DialogThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() => selectedTime = picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.025,
              vertical: height * 0.017,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: AppColors.yellow,
                  child: SvgPicture.asset(
                    AppAssets.oilGalonIcon,
                    width: width * 0.1,
                    height: height * 0.05,
                  ),
                ),
                SizedBox(width: width * 0.01),
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.shop_name,
                      style: Theme.of(
                        context,
                      ).textTheme.labelSmall!.copyWith(fontSize: 14),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAssets.fixIcon,
                          width: width * 0.038,
                          height: height * 0.017,
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          AppLocalizations.of(context)!.repair_shop,
                          style: Theme.of(
                            context,
                          ).textTheme.labelSmall!.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            AppLocalizations.of(context)!.choose_available_date,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: height * 0.01),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.025,
              vertical: height * 0.017,
            ),
            child: Row(
              children: [
                Text(
                  "Date",
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.07,
                    vertical: height * 0.009,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).hoverColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // todo : open Calender to choose the date
                      _pickDate();
                    },
                    child: Text(
                      selectedDate == null
                          ? "dd/mm/yyyy"
                          : "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            AppLocalizations.of(context)!.choose_time,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: height * 0.01),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.025,
              vertical: height * 0.017,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      selectedTime == null
                          ? AppLocalizations.of(context)!.choose_time_in_day
                          : selectedTime!.format(context),
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: value == true ? null : _pickTime,
                      icon: SvgPicture.asset(
                        AppAssets.clockIcon,
                        width: width * 0.05,
                        height: height * 0.05,
                        color: value
                            ? AppColors.grey.withOpacity(0.3)
                            : AppColors.grey, // 👈 faded when disabled
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.any_time,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Switch(
                      activeTrackColor: AppColors.yellow,
                      value: value,
                      onChanged: (bool newValue) {
                        setState(() {
                          value = newValue;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            AppLocalizations.of(context)!.choose_type_of_oil,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: height * 0.01),
          GestureDetector(
            onTap: () {
              // todo : open bottom sheet to choose oil type
              typeOfOilBottomSheet(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.025,
                vertical: height * 0.017,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.yellow,
                      ),
                      SizedBox(width: width * 0.01),
                      Text(
                        selectedOil?.name ??
                            AppLocalizations.of(context)!.select_oil_brand,
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall!.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.grey,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            AppLocalizations.of(context)!.choose_your_car,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: height * 0.01),
          GestureDetector(
            onTap: () {
              // todo : open bottom sheet to choose car
              userCarBottomSheet(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.025,
                vertical: height * 0.017,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.yellow,
                      ),
                      SizedBox(width: width * 0.01),
                      Text(
                        selectedCar?.name ??
                            AppLocalizations.of(context)!.select_car,
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall!.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.grey,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Text(
            AppLocalizations.of(context)!.add_details_optional,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: height * 0.01),
          CustomTextFormField(
            maxLines: 5,
            isFilled: false,
            colorBorder: AppColors.offWhite,
            borderRadius: 10,
            hintText: AppLocalizations.of(context)!.start_typing_here,
            hintStyle: AppStyles.Roboto12Regulargrey2,
            controller: detailsController,
          ),
          SizedBox(height: height * 0.01),
          CustomButtom(
            onPressed: widget.onPressed,
            text: AppLocalizations.of(context)!.next,
            textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  void typeOfOilBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).primaryColor,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) {
        return OilBottomSheet(
          onSelected: (oil) {
            setState(() {
              selectedOil = oil;
            });
          },
        );
      },
    );
  }

  void userCarBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).primaryColor,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) {
        return UserCarsBottomSheet(
          onSelected: (car) {
            setState(() {
              selectedCar = car;
            });
          },
        );
      },
    );
  }
}
