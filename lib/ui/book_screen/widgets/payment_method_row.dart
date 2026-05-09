import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';

class PaymentMethodRow extends StatelessWidget {
  final String paymentMethodName;
  final String icon;

  const PaymentMethodRow({
    super.key,
    required this.paymentMethodName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.03,
            vertical: height * 0.005,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColors.grey2, width: 2),
          ),
          child: SvgPicture.asset(icon),
        ),
        SizedBox(width: width * 0.05),
        Text(
          paymentMethodName,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
        ),
      ],
    );
  }
}
