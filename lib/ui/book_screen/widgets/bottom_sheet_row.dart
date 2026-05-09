import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';

class BottomSheetRow extends StatelessWidget {
  String label;
  bool isSelected;

  BottomSheetRow({super.key, required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.025,
        vertical: height * 0.01,
      ),
      child: Row(
        children: [
          CircleAvatar(radius: 20, backgroundColor: AppColors.yellow),
          SizedBox(width: width * 0.01),
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.labelSmall!.copyWith(fontSize: 14),
          ),
          Spacer(),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.yellow, width: 2),
            ),
            child: isSelected
                ? Center(
                    child: Container(
                      width: 20,
                      height: 15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.yellow,
                      ),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
