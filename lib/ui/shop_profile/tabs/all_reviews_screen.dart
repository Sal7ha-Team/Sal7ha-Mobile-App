import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../widgets/review_card_widget.dart';

class AllReviewsScreen extends StatelessWidget {
  const AllReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        surfaceTintColor: AppColors.transparent,
        backgroundColor: Theme.of(context).canvasColor,
        centerTitle: true,
        title: Text(
          "Reviews",
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).indicatorColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.038),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ReviewCardWidget();
          },
          separatorBuilder: (context, index) =>
              SizedBox(height: height * 0.017),
          itemCount: 25,
        ),
      ),
    );
  }
}
