import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../models/car_model.dart';
import 'bottom_sheet_row.dart';


class UserCarsBottomSheet extends StatefulWidget {
  final Function(CarModel) onSelected;

  const UserCarsBottomSheet({super.key, required this.onSelected});

  @override
  State<UserCarsBottomSheet> createState() => _UserCarsBottomSheetState();
}

// ignore: camel_case_types
class _UserCarsBottomSheetState extends State<UserCarsBottomSheet> {
 
  CarModel? selectedCar;

  @override
  Widget build(BuildContext context) {
     List<CarModel> cars = [
    CarModel(name: AppLocalizations.of(context)!.nissan),
    CarModel(name: AppLocalizations.of(context)!.chevrolet),
    CarModel(name: AppLocalizations.of(context)!.opel),
    CarModel(name: AppLocalizations.of(context)!.skoda),
  ];
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
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
              children: List.generate(cars.length, (index) {
                bool isLast = index == cars.length - 1;
                return Column(
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          selectedCar = cars[index];
                        });
                        widget.onSelected(cars[index]);
                      },
                      child: BottomSheetRow(
                        label: cars[index].name,
                        isSelected: selectedCar?.name == cars[index].name,
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
