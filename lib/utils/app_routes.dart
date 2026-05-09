import 'package:flutter/cupertino.dart';
import '../ui/auth/auth_sreen.dart';
import '../ui/book_screen/book_screen.dart';
import '../ui/chatboot/chatboot.dart';
import '../ui/home_screen/home_screen.dart';
import '../ui/home_screen/tabs/services_tab/services.dart';
import '../ui/norifications_screen/notifications_screen.dart';
import '../ui/onBoarding/screens/first_on_boarding.dart';
import '../ui/onBoarding/screens/second_on_boarding.dart';
import '../ui/onBoarding/screens/third_on_boarding.dart';
import '../ui/onBoarding/screens/verify_email.dart';
import '../ui/personalDetails/screens/car_details.dart';
import '../ui/personalDetails/screens/personal_details.dart';
import '../ui/searchScreen/search_result_screen.dart';
import '../ui/searchScreen/view_all_services_screen.dart';
import '../ui/shop_profile/shop_profile.dart';
import '../ui/shop_profile/tabs/all_reviews_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getroutes() {
    return {
      AppRoutes.authRouteName: (context) => AuthScreen(),
      AppRoutes.homeScreen: (context) => HomeScreen(),
      AppRoutes.verifyEmail: (context) => VerifyEmail(),
      AppRoutes.firstOnBoarding: (context) => FirstOnBoarding(),
      AppRoutes.secondeOnBoarding: (context) => SecondOnBoarding(),
      AppRoutes.thirdOnBoarding: (context) => ThirdOnBoarding(),
      AppRoutes.personalDetails: (context) => PersonalDetails(),
      AppRoutes.carDetails: (context) => CarDetails(),
      AppRoutes.chatBoot: (context) => Chatboot(),
      AppRoutes.notificationsScreen: (context) => NotificationsScreen(),
      AppRoutes.allServicesScreen: (context) => ViewAllServicesScreen(),
      AppRoutes.servicesTab: (context) => ServicesTab(),
      AppRoutes.searchResultScreen: (context) => SearchResultScreen(),
      AppRoutes.bookScreen: (context) => BookScreen(),
      AppRoutes.shopProfile: (context) => ShopProfile(),
      AppRoutes.allReviewsScreen: (context) => AllReviewsScreen(),
    };
  }

  static const String authRouteName = 'auth_screen';
  static const String homeScreen = 'home_screen';
  static const String verifyEmail = 'verify_email';
  static const String firstOnBoarding = 'first_on_boarding';
  static const String secondeOnBoarding = 'seconde_on_boarding';
  static const String thirdOnBoarding = 'third_on_boarding';
  static const String personalDetails = 'personal_details';
  static const String carDetails = 'car_details';
  static const String chatBoot = 'chat_boot';
  static const String notificationsScreen = 'notifications_screen';
  static const String allServicesScreen = 'search_screen';
  static const String servicesTab = 'services_screen';
  static const String searchResultScreen = 'search_result_screen';
  static const String bookScreen = 'book_screen';
  static const String shopProfile = 'shop_profile';
  static const String allReviewsScreen = 'all_reviews_screen';
}
