import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_routes.dart';
import '../../../widgets/custom_buttom.dart';
import '../widgets/square_text_form_field.dart';
import 'first_on_boarding.dart';

class VerifyEmail extends StatefulWidget {
  VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  TextEditingController firstDigitCode = TextEditingController();

  TextEditingController secondDigitCode = TextEditingController();

  TextEditingController thirdDigitCode = TextEditingController();

  TextEditingController fourthDigitCode = TextEditingController();

  TextEditingController fifthDigitCode = TextEditingController();

  final focusNodes = List.generate(5, (_) => FocusNode());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.authRouteName);
          },
        ),
        title: Text(
          AppLocalizations.of(context)!.verify_your_email,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        backgroundColor: AppColors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: width * 0.05,
            right: width * 0.05,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: height * 0.02),
              Image.asset(AppAssets.verifyEmail),
              SizedBox(height: height * 0.05),
              Center(
                child: Text(
                  AppLocalizations.of(
                    context,
                  )!.please_enter_5_digit_code_sent_to,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Center(
                child: Text(
                  "EmailExample123@gmail.com",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SquareTextFormField(
                    controller: firstDigitCode,
                    focusNode: focusNodes[0],
                  ),
                  SquareTextFormField(
                    controller: secondDigitCode,
                    focusNode: focusNodes[1],
                  ),
                  SquareTextFormField(
                    controller: thirdDigitCode,
                    focusNode: focusNodes[2],
                  ),
                  SquareTextFormField(
                    controller: fourthDigitCode,
                    focusNode: focusNodes[3],
                  ),
                  SquareTextFormField(
                    controller: fifthDigitCode,
                    focusNode: focusNodes[4],
                    isLast: true,
                  ),
                ],
              ),
              SizedBox(height: height * 0.1),
              CustomButtom(
                onPressed: () {
                  // todo: navigate to the first on boarding screen
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => FirstOnBoarding()),
                    (Route<dynamic> route) => false,
                  );
                },
                text: AppLocalizations.of(context)!.verify,
                textStyle: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
