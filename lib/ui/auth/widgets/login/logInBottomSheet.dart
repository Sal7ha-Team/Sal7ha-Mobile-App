import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/theme_provider.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';
import '../../../../widgets/custom_buttom.dart';
import '../../../../widgets/custom_text_form_field.dart';
import '../../../home_screen/home_screen.dart';

class Loginbottomsheet extends StatefulWidget {
  Loginbottomsheet({super.key});

  @override
  State<Loginbottomsheet> createState() => _LoginbottomsheetState();
}

class _LoginbottomsheetState extends State<Loginbottomsheet> {
  bool isChecked = false;

  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.02,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Form(
            key: _formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return AppLocalizations.of(context)!.please_enter_email;
                      }
                      final bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                      ).hasMatch(emailController.text);
                      if (!emailValid) {
                        return AppLocalizations.of(context)!.please_enter_valid_email;
                      }
                      return null;
                    },
                    controller: emailController,
                    colorBorder: Colors.transparent,
                    hintText: AppLocalizations.of(context)!.email,
                    hintStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: height * 0.02),
                  CustomTextFormField(
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return AppLocalizations.of(context)!.please_enter_password;
                      }
                      if (passwordController.text.length < 6) {
                        return AppLocalizations.of(context)!.password_should_be_at_least_6_characters;
                      }
                      return null;
                    },
                    obscureText: true,
                    controller: passwordController,
                    colorBorder: Colors.transparent,
                    hintText:AppLocalizations.of(context)!.password,
                    suffix: Icon(Icons.visibility_off),
                    hintStyle: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: height * 0.001),
                ],
              )
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  activeColor: AppColors.yellow ,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(AppLocalizations.of(context)!.remember_me, style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    //todo : Navigate to verify email screen
                  },
                  child:  Text(
                      AppLocalizations.of(context)!.forgot_Password,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontSize: 16
                      )
                  ),
                )
              ],
            ),
            SizedBox(height: height*0.01,),
            CustomButtom(
              onPressed: () {
                // todo : Register
                var isValid = _formKey.currentState!.validate();
                if(isValid){
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                        (predicate) => false,
                  );
                }
              },
              text: AppLocalizations.of(context)!.login,
              textStyle: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: width * 0.05,
                    endIndent: width * 0.05,
                    thickness: 2,
                  ),
                ),
                Text(AppLocalizations.of(context)!.or, style: AppStyles.InterBold16darckBlack.copyWith(color: AppColors.grey)),
                Expanded(
                  child: Divider(
                    indent: width * 0.05,
                    endIndent: width * 0.05,
                    thickness: 2,
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    // todo : Register With facebook acount
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()? AppColors.offWhite : AppColors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: BoxBorder.all(width: 2, color: AppColors.grey),
                    ),
                    child: Image.asset(AppAssets.facebookIcon),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // todo : Register With google Account
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()? AppColors.offWhite : AppColors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: BoxBorder.all(width: 2, color: AppColors.grey),
                    ),
                    child: Image.asset(AppAssets.googleIcon),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //todo : register with apple acoount
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()? AppColors.offWhite : AppColors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: BoxBorder.all(width: 2, color: AppColors.grey),
                    ),
                    child: Image.asset(AppAssets.appleIcon),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.02,)
          ],
        ),
      ),
    );
  }
}
