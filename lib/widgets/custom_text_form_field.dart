import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

typedef onValidator = String? Function(String?)?;
typedef onTap = String? Function(String?)?;

class CustomTextFormField extends StatelessWidget {
  Color colorBorder;
  String? hintText;
  TextStyle? hintStyle;
  String? labelText;
  TextStyle? labelStyle;
  Widget? prefixIcon;
  Widget? suffix;
  Widget? suffixIcon;
  double? borderRadius;
  TextEditingController controller;
  onValidator? validator;
  TextInputType? keyBoardType;
  bool obscureText;
  String? obscuringCharacter;
  int? maxLines;
  bool? isFilled;
  Color? filledColor;
  TextStyle? inputStyle;
  VoidCallback? onTap;
  double? borderWidth;

  CustomTextFormField({
    super.key,
    this.colorBorder = AppColors.grey,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.suffix,
    required this.controller,
    this.validator,
    this.keyBoardType = TextInputType.text,
    this.obscureText = false,
    this.obscuringCharacter,
    this.maxLines,
    this.isFilled = true,
    this.inputStyle,
    this.onTap,
    this.borderWidth,
    this.suffixIcon,
    this.filledColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      style: inputStyle ?? Theme.of(context).textTheme.labelMedium,
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
        enabledBorder: borderDecoration(colorBorder: colorBorder),
        focusedBorder: borderDecoration(colorBorder: AppColors.yellow),
        errorBorder: borderDecoration(colorBorder: Colors.red),
        focusedErrorBorder: borderDecoration(colorBorder: Colors.red),
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelStyle ,
        prefixIcon: prefixIcon,
        suffix: suffix,
        suffixIcon: suffixIcon,
        errorStyle: AppStyles.RobotoSemiBold16yellow.copyWith(color: Colors.red),
        filled: isFilled,
        fillColor: filledColor ?? Theme.of(context).cardColor,
      ),
      keyboardType: keyBoardType,
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      cursorColor: AppColors.yellow,
      obscuringCharacter: obscuringCharacter ?? '●',
    );
  }

  OutlineInputBorder borderDecoration({required Color colorBorder}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 5),
      borderSide: BorderSide(color: colorBorder, width: borderWidth ?? 3),
    );
  }
}
