import 'package:flutter/material.dart';
import 'package:graduation/ui/home_screen/tabs/booking_tab/widgets/book_card.dart';

import '../../../../l10n/app_localizations.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';


class BookingsTab extends StatelessWidget {
  List<BookCard> bookCards = [
    BookCard(
      state: "Active",
      stateColor: AppColors.activeBookCard,
    ),
    BookCard(
      state: "Completed",
      stateColor: AppColors.completedBookCard,
    ),
    BookCard(
      state: "Completed",
      stateColor: AppColors.completedBookCard,
    ),
    BookCard(
      state: "Active",
      stateColor: AppColors.activeBookCard,
    ),
    BookCard(
      state: "Cancelled",
      stateColor: AppColors.cancelledBookCard,
    ),
    BookCard(
      state: "Cancelled",
      stateColor: AppColors.cancelledBookCard,
    ),
  ];
   BookingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          title: Text(
            AppLocalizations.of(context)!.my_bookings,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              height: height*0.05,
              margin: EdgeInsets.symmetric(horizontal: width*0.03),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                dividerColor: AppColors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.yellow
                ),
                labelColor: AppColors.darkBlack,
                unselectedLabelColor: Theme.of(context).focusColor,
                labelStyle: AppStyles.Roboto12Medium,
                tabs: [
                  Tab(
                      text: AppLocalizations.of(context)!.all,
                  ),
                  Tab(
                      text: AppLocalizations.of(context)!.active,
                  ),
                  Tab(
                      text: AppLocalizations.of(context)!.completed,
          ),
                  Tab(
                    text: AppLocalizations.of(context)!.cancelled,
                  ),
                ],
              ),
            ),
          ),
        ),
        body:TabBarView(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return bookCards[index];
              },
              itemCount: bookCards.length,
            ),
            ListView.builder(
                itemBuilder: (context, index) {
                return bookCards.where((element) => element.state == "Active").toList()[index];
              },
              itemCount: bookCards.where((element) => element.state == "Active").toList().length,
            ),
            ListView.builder(
                itemBuilder: (context, index) {
                return bookCards.where((element) => element.state == "Completed").toList()[index];
              },
              itemCount: bookCards.where((element) => element.state == "Completed").toList().length,
            ),
            ListView.builder(
                itemBuilder: (context, index) {
                return bookCards.where((element) => element.state == "Cancelled").toList()[index];
              },
              itemCount: bookCards.where((element) => element.state == "Cancelled").toList().length,
            ),
          ],
        ),
      ),
    );
  }
}
