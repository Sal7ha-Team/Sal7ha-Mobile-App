import 'package:flutter/material.dart';


import '../../../l10n/app_localizations.dart';
import '../../../models/oil_brand_model.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'bottom_sheet_row.dart';

class OilBottomSheet extends StatefulWidget {
  final Function(OilBrandModel) onSelected;
  OilBottomSheet({super.key, required this.onSelected});

  @override
  State<OilBottomSheet> createState() => _OilBottomSheetState();
}

class _OilBottomSheetState extends State<OilBottomSheet> {
  TextEditingController oilSearchcontroller = TextEditingController();
  OilBrandModel? selectedOil;


  @override
  Widget build(BuildContext context) {
      List<OilBrandModel> oilsBrands = [
    OilBrandModel(name: AppLocalizations.of(context)!.mobil),
    OilBrandModel(name: AppLocalizations.of(context)!.shell),
    OilBrandModel(name: AppLocalizations.of(context)!.castrol),
    OilBrandModel(name: AppLocalizations.of(context)!.total),
  ];
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.025,
            vertical: height * 0.01,
          ),
          child: CustomTextFormField(
            colorBorder: AppColors.transparent,
            prefixIcon: Icon(Icons.search, color: AppColors.grey),
            hintText: AppLocalizations.of(context)!.search_for_services,
            hintStyle: AppStyles.Roboto14RegularGrey.copyWith(fontSize: 12),
            controller: oilSearchcontroller,
            isFilled: true,
            filledColor: Theme.of(context).cardColor,
            borderRadius: 10,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.025,
            right: width * 0.025,
            bottom: height * 0.02,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: List.generate(oilsBrands.length, (index) {
                bool isLast = index == oilsBrands.length - 1;
                return Column(
                  children: [
                    InkWell(
                      splashColor: AppColors.transparent,
                      onTap: () {
                        setState(() {
                          selectedOil = oilsBrands[index];
                        });
                        widget.onSelected(oilsBrands[index]);
                      },
                      child: BottomSheetRow(
                        label: oilsBrands[index].name,
                        isSelected: selectedOil?.name == oilsBrands[index].name,
                      ),
                    ),
                    if (!isLast)
                      Divider(
                        color: Theme.of(context).hoverColor,
                        thickness: 2,
                        endIndent: width * 0.035,
                        indent: width * 0.035,
                        radius: BorderRadius.circular(10),
                      ),
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
