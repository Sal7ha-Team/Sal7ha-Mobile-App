import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../l10n/app_localizations.dart';
import '../../../models/credit_card_model.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
import '../widgets/bottom_widget.dart';
import '../widgets/payment_bottom_sheet.dart';


class SecondTab extends StatefulWidget {
  const SecondTab({super.key});

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  CreditCard? selectedCard;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Column(
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
              SizedBox(width: width * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.shop_name,
                    style: Theme.of(
                      context,
                    ).textTheme.labelSmall!.copyWith(fontSize: 14),
                  ),
                  SizedBox(height: height * 0.006),
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
                  SizedBox(height: height * 0.006),
                  Row(
                    children: [
                      SvgPicture.asset(AppAssets.calenderIcon),
                      SizedBox(width: width * 0.0076),
                      Text(
                        "20.01.26",
                        style: Theme.of(
                          context,
                        ).textTheme.labelSmall!.copyWith(fontSize: 12),
                      ),
                      SizedBox(width: 20),
                      SvgPicture.asset(AppAssets.timeSandIcon),
                      SizedBox(width: width * 0.0076),
                      Text(
                        "09:00 AM",
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
          AppLocalizations.of(context)!.choose_payment_method,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: height * 0.01),
        GestureDetector(
          onTap: () {
            paymentMethodBottomSheet(context);
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
                Text(
                  selectedCard?.cardType ?? AppLocalizations.of(context)!.choose_payment_method,
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w400),
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
          AppLocalizations.of(context)!.price_breakdown,
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
                    AppLocalizations.of(context)!.estimated_service_price,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.grey,
                    size: 25,
                  ),
                  Spacer(),
                  Text(
                    "\$140",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.011),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.fees,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.grey,
                    size: 25,
                  ),
                  Spacer(),
                  Text(
                    "\$25",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.011),
              Divider(
                color: Theme.of(context).focusColor,
                thickness: 2,
                radius: BorderRadius.circular(10),
              ),
              SizedBox(height: height * 0.011),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.estimated_total,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: width * 0.01),
                  Icon(
                    Icons.info_outline_rounded,
                    color: AppColors.grey,
                    size: 25,
                  ),
                  Spacer(),
                  Text(
                    "\$115-165",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.011),
            ],
          ),
        ),
        SizedBox(height: height * 0.01),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: AppLocalizations.of(context)!.estimated_total_price_description,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: AppLocalizations.of(context)!.terms_conditions,
                style: AppStyles.Roboto12Regularyellow.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        Spacer(),
        BottomWidget(),
      ],
    );
  }

  void paymentMethodBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).primaryColor,
      showDragHandle: true,
      builder: (_) {
        return PaymentBottomSheet(
          onSelected: (CreditCard card) {
            setState(() {
              selectedCard = card;
            });
            Navigator.pop(context);
          },
        );
      },
    );
  }
}
