import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';


typedef onValidator = String? Function(String?)? ;
class CustomTextFormField extends StatelessWidget {
  Color colorBorder;
  String? hintText ;
  TextStyle? hintStyle;
  String? labelText ;
  TextStyle? labelStyle;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextEditingController controller;
  onValidator? validator ;
  TextInputType? keyBoardType ;
  bool obscureText ;
  String? obscuringCharacter ;
  int? maxLines;


  CustomTextFormField({super.key,
    this.colorBorder = AppColors.gray,
    this.hintText,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.keyBoardType = TextInputType.text ,
    this.obscureText = false ,
    this.obscuringCharacter,
    this.maxLines
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      decoration: InputDecoration(
          enabledBorder: borderDecoration(colorBorder: colorBorder),
          focusedBorder: borderDecoration(colorBorder: colorBorder),
          errorBorder: borderDecoration(colorBorder: Colors.red),
          focusedErrorBorder: borderDecoration(colorBorder: Colors.red),
          hintText: hintText,
          hintStyle: hintStyle ?? AppStyles.medium16black,
          labelText: labelText,
          labelStyle: labelStyle ?? AppStyles.medium16black,
          prefixIcon: prefixIcon,
          suffix: suffixIcon,
          errorStyle: AppStyles.medium16black.copyWith(
              color: Colors.red
          ),
        filled: true,
        fillColor: AppColors.gray
      ),
      keyboardType: keyBoardType ,
      obscureText: obscureText ,
      controller: controller ,
      validator: validator,
      cursorColor: AppColors.yellow,
      obscuringCharacter: obscuringCharacter ?? '.' ,

    );
  }
  OutlineInputBorder borderDecoration({required Color colorBorder}){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
            color: colorBorder ,
            width: 3
        )
    );
  }
}
