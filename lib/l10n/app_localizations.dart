import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @car_service.
  ///
  /// In en, this message translates to:
  /// **'CAR SERVICE'**
  String get car_service;

  /// No description provided for @the_smart_way_to_repair_rated_priced_mapped.
  ///
  /// In en, this message translates to:
  /// **'The Smart Way To Repair. Rated ,\n Priced , Mapped.'**
  String get the_smart_way_to_repair_rated_priced_mapped;

  /// No description provided for @dont_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account'**
  String get dont_have_an_account;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get sign_up;

  /// No description provided for @click_here_to.
  ///
  /// In en, this message translates to:
  /// **'Click Here To'**
  String get click_here_to;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'LogIn'**
  String get login;

  /// No description provided for @user_name.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get user_name;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// No description provided for @already_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Already Have an Account ?'**
  String get already_have_an_account;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get sign_in;

  /// No description provided for @forgot_Password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgot_Password;

  /// No description provided for @remember_me.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get remember_me;

  /// No description provided for @please_enter_password.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Password'**
  String get please_enter_password;

  /// No description provided for @password_should_be_at_least_6_characters.
  ///
  /// In en, this message translates to:
  /// **'Password Should be at Least 6 Characters'**
  String get password_should_be_at_least_6_characters;

  /// No description provided for @please_enter_email.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Email'**
  String get please_enter_email;

  /// No description provided for @please_enter_name.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Name'**
  String get please_enter_name;

  /// No description provided for @please_enter_valid_email.
  ///
  /// In en, this message translates to:
  /// **'Please Enter Valid Email'**
  String get please_enter_valid_email;

  /// No description provided for @verify_your_email.
  ///
  /// In en, this message translates to:
  /// **'Verify Your Email'**
  String get verify_your_email;

  /// No description provided for @please_enter_5_digit_code_sent_to.
  ///
  /// In en, this message translates to:
  /// **'Please Enter 5 Digit Code Sent to'**
  String get please_enter_5_digit_code_sent_to;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @best_rates.
  ///
  /// In en, this message translates to:
  /// **'Best Rates!'**
  String get best_rates;

  /// No description provided for @find_the_best_reliable_shops_suited_for_your_needs.
  ///
  /// In en, this message translates to:
  /// **'Find the best reliable shops suited for your needs!'**
  String get find_the_best_reliable_shops_suited_for_your_needs;

  /// No description provided for @save_time.
  ///
  /// In en, this message translates to:
  /// **'Save Time'**
  String get save_time;

  /// No description provided for @save_your_time_and_find_the_best_centers_faster_and_easier.
  ///
  /// In en, this message translates to:
  /// **'Save your Time and Find the Best Centers Faster and Easier!'**
  String get save_your_time_and_find_the_best_centers_faster_and_easier;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started!'**
  String get get_started;

  /// No description provided for @enter_your_personal_car_details_to_have_better_experience.
  ///
  /// In en, this message translates to:
  /// **'Enter your personal & car details to have better experience'**
  String get enter_your_personal_car_details_to_have_better_experience;

  /// No description provided for @password_not_match.
  ///
  /// In en, this message translates to:
  /// **'Password Not Match'**
  String get password_not_match;

  /// No description provided for @first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get first_name;

  /// No description provided for @sur_name.
  ///
  /// In en, this message translates to:
  /// **'Sur Name'**
  String get sur_name;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @street_address.
  ///
  /// In en, this message translates to:
  /// **'Street Address'**
  String get street_address;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @zip_code.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get zip_code;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @personal_details.
  ///
  /// In en, this message translates to:
  /// **'Personal Details'**
  String get personal_details;

  /// No description provided for @car_details.
  ///
  /// In en, this message translates to:
  /// **'Car Details'**
  String get car_details;

  /// No description provided for @oops_do_not_miss_this_field.
  ///
  /// In en, this message translates to:
  /// **'Oops ! Don\'t Miss This Field'**
  String get oops_do_not_miss_this_field;

  /// No description provided for @make.
  ///
  /// In en, this message translates to:
  /// **'Make'**
  String get make;

  /// No description provided for @made.
  ///
  /// In en, this message translates to:
  /// **'Made'**
  String get made;

  /// No description provided for @fuel_type.
  ///
  /// In en, this message translates to:
  /// **'Fuel Type'**
  String get fuel_type;

  /// No description provided for @year_of_manufacture.
  ///
  /// In en, this message translates to:
  /// **'Year Of Manufacture'**
  String get year_of_manufacture;

  /// No description provided for @transmission_type.
  ///
  /// In en, this message translates to:
  /// **'Transmission Type'**
  String get transmission_type;

  /// No description provided for @license_plate_number.
  ///
  /// In en, this message translates to:
  /// **'License Plate Number'**
  String get license_plate_number;

  /// No description provided for @vehicle_identification_number.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Identification Number (Optional)'**
  String get vehicle_identification_number;

  /// No description provided for @lets.
  ///
  /// In en, this message translates to:
  /// **'Let\'s '**
  String get lets;

  /// No description provided for @find_your_needed.
  ///
  /// In en, this message translates to:
  /// **'Find Your\nNeeded '**
  String get find_your_needed;

  /// No description provided for @service_here.
  ///
  /// In en, this message translates to:
  /// **'Service Here.'**
  String get service_here;

  /// No description provided for @search_for_services.
  ///
  /// In en, this message translates to:
  /// **'Search For Services'**
  String get search_for_services;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'Services'**
  String get services;

  /// No description provided for @bookings.
  ///
  /// In en, this message translates to:
  /// **'Bookings'**
  String get bookings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @recent_services.
  ///
  /// In en, this message translates to:
  /// **'Recent Services'**
  String get recent_services;

  /// No description provided for @view_all.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get view_all;

  /// No description provided for @service_category.
  ///
  /// In en, this message translates to:
  /// **'Service Category'**
  String get service_category;

  /// No description provided for @find_the_best_deal.
  ///
  /// In en, this message translates to:
  /// **'Find the best Deal'**
  String get find_the_best_deal;

  /// No description provided for @oil.
  ///
  /// In en, this message translates to:
  /// **'Oil'**
  String get oil;

  /// No description provided for @engine.
  ///
  /// In en, this message translates to:
  /// **'Engine'**
  String get engine;

  /// No description provided for @painting.
  ///
  /// In en, this message translates to:
  /// **'Painting'**
  String get painting;

  /// No description provided for @suspension.
  ///
  /// In en, this message translates to:
  /// **'Suspension'**
  String get suspension;

  /// No description provided for @wheels.
  ///
  /// In en, this message translates to:
  /// **'Wheels'**
  String get wheels;

  /// No description provided for @battery.
  ///
  /// In en, this message translates to:
  /// **'Battery'**
  String get battery;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @see_more.
  ///
  /// In en, this message translates to:
  /// **'See More'**
  String get see_more;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @try_out_services.
  ///
  /// In en, this message translates to:
  /// **'Try Out Services'**
  String get try_out_services;

  /// No description provided for @find_the_best_fixers.
  ///
  /// In en, this message translates to:
  /// **'Find The Best Fixers'**
  String get find_the_best_fixers;

  /// No description provided for @order_some_goods.
  ///
  /// In en, this message translates to:
  /// **'Order Some Goods'**
  String get order_some_goods;

  /// No description provided for @buy_from_our_best_suppliers.
  ///
  /// In en, this message translates to:
  /// **'Buy From Our Best Suppliers'**
  String get buy_from_our_best_suppliers;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get log_out;

  /// No description provided for @highest_rated.
  ///
  /// In en, this message translates to:
  /// **'Highest Rated'**
  String get highest_rated;

  /// No description provided for @booking_history.
  ///
  /// In en, this message translates to:
  /// **'Highest Rated'**
  String get booking_history;

  /// No description provided for @refer_a_friend.
  ///
  /// In en, this message translates to:
  /// **'Refer A Friend'**
  String get refer_a_friend;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @help_and_support.
  ///
  /// In en, this message translates to:
  /// **'Help And Support'**
  String get help_and_support;

  /// No description provided for @my_bookings.
  ///
  /// In en, this message translates to:
  /// **'My Bookings'**
  String get my_bookings;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @book_fixer.
  ///
  /// In en, this message translates to:
  /// **'Book Fixer'**
  String get book_fixer;

  /// No description provided for @reschedule.
  ///
  /// In en, this message translates to:
  /// **'Reschedule'**
  String get reschedule;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @shop_name.
  ///
  /// In en, this message translates to:
  /// **'Shop Name'**
  String get shop_name;

  /// No description provided for @fix_type.
  ///
  /// In en, this message translates to:
  /// **'Fix Type'**
  String get fix_type;

  /// No description provided for @show_profile.
  ///
  /// In en, this message translates to:
  /// **'Show Profile'**
  String get show_profile;

  /// No description provided for @search_about_car_services.
  ///
  /// In en, this message translates to:
  /// **'Search about Car Services'**
  String get search_about_car_services;

  /// No description provided for @repair_shop.
  ///
  /// In en, this message translates to:
  /// **'Repair Shop'**
  String get repair_shop;

  /// No description provided for @choose_available_date.
  ///
  /// In en, this message translates to:
  /// **'Choose Available Date'**
  String get choose_available_date;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @choose_time.
  ///
  /// In en, this message translates to:
  /// **'Choose Time'**
  String get choose_time;

  /// No description provided for @choose_time_in_day.
  ///
  /// In en, this message translates to:
  /// **'Choose Time in Day'**
  String get choose_time_in_day;

  /// No description provided for @any_time.
  ///
  /// In en, this message translates to:
  /// **'Any Time'**
  String get any_time;

  /// No description provided for @choose_type_of_oil.
  ///
  /// In en, this message translates to:
  /// **'Choose Type of Oil'**
  String get choose_type_of_oil;

  /// No description provided for @select_oil_brand.
  ///
  /// In en, this message translates to:
  /// **'Select Oil Brand'**
  String get select_oil_brand;

  /// No description provided for @mobil.
  ///
  /// In en, this message translates to:
  /// **'Mobil'**
  String get mobil;

  /// No description provided for @castrol.
  ///
  /// In en, this message translates to:
  /// **'Castrol'**
  String get castrol;

  /// No description provided for @shell.
  ///
  /// In en, this message translates to:
  /// **'Shell'**
  String get shell;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @choose_your_car.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Car'**
  String get choose_your_car;

  /// No description provided for @select_car.
  ///
  /// In en, this message translates to:
  /// **'Select Car'**
  String get select_car;

  /// No description provided for @nissan.
  ///
  /// In en, this message translates to:
  /// **'Nissan'**
  String get nissan;

  /// No description provided for @chevrolet.
  ///
  /// In en, this message translates to:
  /// **'Chevrolet'**
  String get chevrolet;

  /// No description provided for @opel.
  ///
  /// In en, this message translates to:
  /// **'Opel'**
  String get opel;

  /// No description provided for @skoda.
  ///
  /// In en, this message translates to:
  /// **'Skoda'**
  String get skoda;

  /// No description provided for @add_details_optional.
  ///
  /// In en, this message translates to:
  /// **'Add Details (Optional)'**
  String get add_details_optional;

  /// No description provided for @start_typing_here.
  ///
  /// In en, this message translates to:
  /// **'Start Typing Here'**
  String get start_typing_here;

  /// No description provided for @choose_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Choose Payment Method'**
  String get choose_payment_method;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @credit_card.
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get credit_card;

  /// No description provided for @add_credit_card.
  ///
  /// In en, this message translates to:
  /// **'Add Credit Card'**
  String get add_credit_card;

  /// No description provided for @paypal.
  ///
  /// In en, this message translates to:
  /// **'Paypal'**
  String get paypal;

  /// No description provided for @price_breakdown.
  ///
  /// In en, this message translates to:
  /// **'Price Breakdown'**
  String get price_breakdown;

  /// No description provided for @estimated_service_price.
  ///
  /// In en, this message translates to:
  /// **'Estimated Service Price'**
  String get estimated_service_price;

  /// No description provided for @fees.
  ///
  /// In en, this message translates to:
  /// **'Fees'**
  String get fees;

  /// No description provided for @estimated_total_price.
  ///
  /// In en, this message translates to:
  /// **'Estimated Total Price'**
  String get estimated_total_price;

  /// No description provided for @estimated_total.
  ///
  /// In en, this message translates to:
  /// **'Estimated Total'**
  String get estimated_total;

  /// No description provided for @to_pay_now.
  ///
  /// In en, this message translates to:
  /// **'To Pay Now'**
  String get to_pay_now;

  /// No description provided for @total_to_pay.
  ///
  /// In en, this message translates to:
  /// **'Total To Pay'**
  String get total_to_pay;

  /// No description provided for @confirm_choices.
  ///
  /// In en, this message translates to:
  /// **'Confirm Choices'**
  String get confirm_choices;

  /// No description provided for @estimated_total_price_description.
  ///
  /// In en, this message translates to:
  /// **'For services with variable costs, we provide an estimated price range. You\'ll be charged 50% upfront, with the remainder due upon completion, ensuring transparency and flexibility. Read more about it in our'**
  String get estimated_total_price_description;

  /// No description provided for @terms_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions.'**
  String get terms_conditions;

  /// No description provided for @card_number.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get card_number;

  /// No description provided for @security_code.
  ///
  /// In en, this message translates to:
  /// **'Security Code'**
  String get security_code;

  /// No description provided for @cardholder_name.
  ///
  /// In en, this message translates to:
  /// **'Cardholder Name'**
  String get cardholder_name;

  /// No description provided for @country_region.
  ///
  /// In en, this message translates to:
  /// **'Country/Region'**
  String get country_region;

  /// No description provided for @suite_apt.
  ///
  /// In en, this message translates to:
  /// **'Suite/Apartment'**
  String get suite_apt;

  /// No description provided for @town_city.
  ///
  /// In en, this message translates to:
  /// **'Town/City'**
  String get town_city;

  /// No description provided for @state_province.
  ///
  /// In en, this message translates to:
  /// **'State/Province'**
  String get state_province;

  /// No description provided for @postal_code.
  ///
  /// In en, this message translates to:
  /// **'Postal Code'**
  String get postal_code;

  /// No description provided for @save_and_continue.
  ///
  /// In en, this message translates to:
  /// **'Save and Continue'**
  String get save_and_continue;

  /// No description provided for @booking.
  ///
  /// In en, this message translates to:
  /// **'Booking'**
  String get booking;

  /// No description provided for @shop_profile.
  ///
  /// In en, this message translates to:
  /// **'Shop Profile'**
  String get shop_profile;

  /// No description provided for @number_of_reviews.
  ///
  /// In en, this message translates to:
  /// **'Number of Reviews'**
  String get number_of_reviews;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @top_rated.
  ///
  /// In en, this message translates to:
  /// **'Top Rated'**
  String get top_rated;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @shop_rate.
  ///
  /// In en, this message translates to:
  /// **'Shop Rate'**
  String get shop_rate;

  /// No description provided for @shop_location.
  ///
  /// In en, this message translates to:
  /// **'Shop Location'**
  String get shop_location;

  /// No description provided for @shop_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Shop Phone Number'**
  String get shop_phone_number;

  /// No description provided for @shop_working_days.
  ///
  /// In en, this message translates to:
  /// **'Shop Working Days'**
  String get shop_working_days;

  /// No description provided for @shop_facility_type.
  ///
  /// In en, this message translates to:
  /// **'Shop Facility Type'**
  String get shop_facility_type;

  /// No description provided for @shop_whatsapp.
  ///
  /// In en, this message translates to:
  /// **'Shop WhatsApp'**
  String get shop_whatsapp;

  /// No description provided for @shop_facebook.
  ///
  /// In en, this message translates to:
  /// **'Shop Facebook'**
  String get shop_facebook;

  /// No description provided for @shop_instagram.
  ///
  /// In en, this message translates to:
  /// **'Shop Instagram'**
  String get shop_instagram;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @completion_rate.
  ///
  /// In en, this message translates to:
  /// **'Completion Rate'**
  String get completion_rate;

  /// No description provided for @show_more.
  ///
  /// In en, this message translates to:
  /// **'Show More'**
  String get show_more;

  /// No description provided for @show_less.
  ///
  /// In en, this message translates to:
  /// **'Show Less'**
  String get show_less;

  /// No description provided for @see_all.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get see_all;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @book_now.
  ///
  /// In en, this message translates to:
  /// **'Book Now'**
  String get book_now;

  /// No description provided for @jobs.
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobs;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
