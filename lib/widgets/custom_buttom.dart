import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomButtom extends StatelessWidget {
  VoidCallback onPressed;
  String text;
  Color? backGroundColor;
  Color? borderColor;
  bool hasIcon;
  Widget? iconName;
  TextStyle? textStyle;
  MainAxisAlignment? mainAxisAlignment;

  CustomButtom({
    super.key,
    required this.onPressed,
    required this.text,
    this.backGroundColor = AppColors.yellow,
    this.borderColor,
    this.hasIcon = false,
    this.iconName,
    required this.textStyle,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            width: 2,
            color: borderColor ?? AppColors.transparent,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: height * 0.015),
      ),
      child: hasIcon
          ? Row(
        mainAxisAlignment: mainAxisAlignment!,
        children: [
          iconName!,
          SizedBox(width: width * 0.025),
          Text(text, style: textStyle),
        ],
      )
          : Text(text, style: textStyle),
    );
  }
}
