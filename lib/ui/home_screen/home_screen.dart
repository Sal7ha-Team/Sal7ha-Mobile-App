import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation/ui/home_screen/tabs/booking_tab/bookings.dart';
import 'package:graduation/ui/home_screen/tabs/home_tab/home_tab.dart';
import 'package:graduation/ui/home_screen/tabs/profile_tab/profile.dart';
import 'package:graduation/ui/home_screen/tabs/services_tab/services.dart';
import 'package:provider/provider.dart';
import '../../l10n/app_localizations.dart';
import '../../providers/theme_provider.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_routes.dart';
import '../../utils/app_styles.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [HomeTab(), ServicesTab(), BookingsTab(), ProfileTab()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: DefaultTabController(
        length: tabs.length,
        child: TabBar(
          dividerHeight: 0,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          indicatorColor: AppColors.yellow,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            border: Border(top: BorderSide(color: AppColors.yellow, width: 5)),
          ),
          labelColor: AppColors.yellow,
          unselectedLabelColor: AppColors.grey,
          tabs: [
            Tab(
              icon: SvgPicture.asset(
                selectedIndex == 0
                    ? AppAssets.selectedHomeIcon
                    : AppAssets.unSelectedHomeIcon,
              ),
              child: Text(
                AppLocalizations.of(context)!.home,
                style: AppStyles.tabLabelStyle,
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                selectedIndex == 1
                    ? AppAssets.selectedServicesIcon
                    : AppAssets.unSelectedServicesIcon,
              ),
              child: Text(
                AppLocalizations.of(context)!.services,
                style: AppStyles.tabLabelStyle,
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                selectedIndex == 2
                    ? AppAssets.selectedBookingsIcon
                    : AppAssets.unSelectedBookingsIcon,
                height: 35,
              ),
              child: Text(
                AppLocalizations.of(context)!.bookings,
                style: AppStyles.tabLabelStyle,
              ),
            ),
            Tab(
              icon: SvgPicture.asset(
                selectedIndex == 3
                    ? AppAssets.selectedProfileIcon
                    : AppAssets.unSelectedProfileIcon,
              ),
              child: Text(
                AppLocalizations.of(context)!.profile,
                style: AppStyles.tabLabelStyle,
              ),
            ),
          ],
        ),
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // todo : navigate to chat boot screen
          Navigator.pushNamed(context, AppRoutes.chatBoot);
        },
        shape: CircleBorder(),
        backgroundColor: AppColors.yellow,
        foregroundColor: AppColors.white,
        child: SvgPicture.asset(
          AppAssets.ai_brain,
          color: AppColors.white,
          width: 30,
          height: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
/*
 AnimatedBottomNavigationBar(
        splashRadius: 0,
        activeColor: AppColors.yellow,
        inactiveColor: AppColors.grey,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        icons: icons,
        activeIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      )

 */

/**

    NavigationBar(
    backgroundColor: AppColors.white,
    indicatorColor: AppColors.yellow,
    selectedIndex: selectedIndex,
    onDestinationSelected: (index) {
    setState(() {
    selectedIndex = index;
    });
    },
    destinations: [
    NavigationDestination(icon: Icon(Icons.home), label: "Home"),

    NavigationDestination(icon: Icon(Icons.search), label: "Search"),

    NavigationDestination(icon: Icon(Icons.favorite), label: "Favorites"),

    NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
    ],
    ),

 */
