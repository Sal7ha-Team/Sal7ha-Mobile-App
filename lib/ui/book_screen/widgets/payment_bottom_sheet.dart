import 'package:flutter/material.dart';
import 'package:graduation/ui/book_screen/widgets/payment_method_row.dart';

import '../../../l10n/app_localizations.dart';
import '../../../models/credit_card_model.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../widgets/custom_buttom.dart';
import '../add_credit_card_screen.dart';

class PaymentBottomSheet extends StatefulWidget {
  final Function(CreditCard) onSelected;

  PaymentBottomSheet({super.key, required this.onSelected});

  @override
  State<PaymentBottomSheet> createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  CreditCard? selectedCard;
 
  @override
  Widget build(BuildContext context) {
     List<CreditCard> creditCards = [
    CreditCard(
      cardType: AppLocalizations.of(context)!.cash,
      cardNumber: "6523",
      icon: AppAssets.walletIcon,
    ),
    CreditCard(
      cardType: AppLocalizations.of(context)!.credit_card,
      cardNumber: "5678",
      icon: AppAssets.masterCardIcon,
    ),
    CreditCard(
      cardType: AppLocalizations.of(context)!.paypal,
      cardNumber: "9012",
      icon: AppAssets.paypalIcon,
    ),
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
          child: Column(
            children: List.generate(creditCards.length, (index) {
              bool isLast = index == creditCards.length - 1;
              return Column(
                children: [
                  InkWell(
                    splashColor: AppColors.transparent,
                    onTap: () {
                      setState(() {
                        selectedCard = creditCards[index];
                      });
                      widget.onSelected(creditCards[index]);
                    },
                    child: PaymentMethodRow(
                      paymentMethodName: creditCards[index].cardType!,
                      icon: creditCards[index].icon ?? AppAssets.engineIcon,
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).hoverColor,
                    thickness: 2,
                    endIndent: width * 0.035,
                    indent: width * 0.035,
                    radius: BorderRadius.circular(10),
                  ),
                  if (!isLast) SizedBox(height: height * 0.01),
                ],
              );
            }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.3,
            right: width * 0.3,
            bottom: height * 0.02,
          ),
          child: CustomButtom(
            backGroundColor: AppColors.transparent,
            borderColor: AppColors.yellow,
            hasIcon: true,
            iconName: Icon(Icons.add, color: AppColors.yellow),
            onPressed: () {
              // TODO : Navigate to add credit card screen
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddCreditCardScreen(),
                ),
              );
            },
            text: AppLocalizations.of(context)!.add_credit_card,
            textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.yellow,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
