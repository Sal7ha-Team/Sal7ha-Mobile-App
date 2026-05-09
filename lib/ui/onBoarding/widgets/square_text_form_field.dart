import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/app_colors.dart';

class SquareTextFormField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  final FocusNode focusNode;
  final bool isLast;

  SquareTextFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.15,
      height: height * 0.07,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        focusNode: focusNode,
        cursorColor: AppColors.transparent,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1),
        ],
        style: Theme.of(context).textTheme.bodyLarge,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.yellow, width: 2),
          ),
          border: InputBorder.none,
          hintText: "●",
          hintStyle: TextStyle(fontSize: 32, color: Theme.of(context).indicatorColor , fontWeight: FontWeight.bold),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            if (isLast) {
              FocusScope.of(context).unfocus();
            } else {
              FocusScope.of(context).nextFocus();
            }
          }
        },
      ),
    );
  }
}
