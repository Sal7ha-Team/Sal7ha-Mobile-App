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
import '../../../onBoarding/screens/verify_email.dart';
import '../login/logInBottomSheet.dart';

class Signupbottomsheet extends StatefulWidget {
  Signupbottomsheet({super.key});

  @override
  State<Signupbottomsheet> createState() => _SignupbottomsheetState();
}

class _SignupbottomsheetState extends State<Signupbottomsheet> {
  GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var themeProvider = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.05,
        right: width * 0.05,
        bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Form(
           key: _formKey,
             child:Column(
               children: [
                 CustomTextFormField(
                   validator: (text) {
                     if(text == null || text.isEmpty){
                       return AppLocalizations.of(context)!.please_enter_name;
                     }
                     return null ;
                   },
                   controller: usernameController,
                   colorBorder: Colors.transparent,
                   hintText: AppLocalizations.of(context)!.user_name,
                   hintStyle: Theme.of(context).textTheme.labelMedium,
                 ),
                 SizedBox(height: height * 0.02),
                 CustomTextFormField(
                   keyBoardType: TextInputType.emailAddress,
                   validator: (text) {
                     if(text == null || text.isEmpty){
                       return AppLocalizations.of(context)!.please_enter_email;
                     }
                     final bool emailValid =
                     RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                         .hasMatch(emailController.text);
                     if(!emailValid){
                       return AppLocalizations.of(context)!.please_enter_valid_email;
                     }
                     return null ;
                   },
                   controller: emailController,
                   colorBorder: Colors.transparent,
                   hintText: AppLocalizations.of(context)!.email,
                   hintStyle: Theme.of(context).textTheme.labelMedium,
                 ),
                 SizedBox(height: height * 0.02),
                 CustomTextFormField(
                   keyBoardType: TextInputType.visiblePassword,
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
                   hintText: AppLocalizations.of(context)!.password,
                   suffix: Icon(Icons.visibility_off),
                   hintStyle: Theme.of(context).textTheme.labelMedium,
                 ),
                 SizedBox(height: height * 0.02),
                 CustomTextFormField(
                   keyBoardType: TextInputType.visiblePassword,
                   validator: (text) {
                     if (text == null || text.isEmpty) {
                       return AppLocalizations.of(context)!.please_enter_password;
                     }
                     if (passwordController.text.length < 6) {
                       return AppLocalizations.of(context)!.password_should_be_at_least_6_characters;
                     }
                     if(confirmPasswordController.text != passwordController.text){
                       return AppLocalizations.of(context)!.password_not_match;
                     }
                     return null;
                   },
                   obscureText: true,
                   controller: confirmPasswordController,
                   colorBorder: Colors.transparent,
                   hintText: AppLocalizations.of(context)!.confirm_password,
                   suffix: Icon(Icons.visibility_off),
                   hintStyle:  Theme.of(context).textTheme.labelMedium,
                 ),
               ],
             )
         ),
          SizedBox(height: height * 0.02),
          CustomButtom(
            onPressed: () {
              // todo : Register
              var isValid = _formKey.currentState!.validate();
              if(isValid){
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyEmail()),
                      (predicate) => false,
                );
              }
            },
            text: AppLocalizations.of(context)!.register,
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
                onTap: (){
                  // todo : Register With facebook account
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                  decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()? AppColors.offWhite : AppColors.transparent,
                      borderRadius: BorderRadius.circular(5) ,
                      border: BoxBorder.all(width: 2 , color: AppColors.grey )

                  ),
                  child: Image.asset(AppAssets.facebookIcon),
                ),
              ),
              InkWell(
                onTap: (){
                  // todo : Register With google Account
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                  decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()? AppColors.offWhite : AppColors.transparent,
                      borderRadius: BorderRadius.circular(5) ,
                      border: BoxBorder.all(width: 2 , color: AppColors.grey )

                  ),
                  child: Image.asset(AppAssets.googleIcon),
                ),
              ),
              InkWell(
                onTap: (){
                  //todo : register with apple account
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                  decoration: BoxDecoration(
                      color: themeProvider.isDarkMode()? AppColors.offWhite : AppColors.transparent,
                      borderRadius: BorderRadius.circular(5) ,
                      border: BoxBorder.all(width: 2 , color: AppColors.grey )
                  ),
                  child: Image.asset(AppAssets.appleIcon),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppLocalizations.of(context)!.already_have_an_account , style: AppStyles.InterMedium14darckBlack.copyWith(color: AppColors.grey),),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);

                    Future.delayed(const Duration(milliseconds: 150), () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Theme.of(context).primaryColor,
                          isScrollControlled: true,
                          builder: (context) => Loginbottomsheet()
                      );
                    });
                  },
                  child: Text(AppLocalizations.of(context)!.sign_in , style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.yellow),)
              )
            ],
          ),
        ],
      ),
    );
  }
}

