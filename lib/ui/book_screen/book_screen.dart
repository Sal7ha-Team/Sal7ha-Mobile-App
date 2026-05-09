import 'package:flutter/material.dart';
import 'package:graduation/ui/book_screen/tabs/first_tab.dart';
import 'package:graduation/ui/book_screen/tabs/second_tab.dart';
import 'package:graduation/ui/book_screen/widgets/progress_bar.dart';

import '../../l10n/app_localizations.dart';
import '../../utils/app_colors.dart';


class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final int _totalSteps = 2;
  int _currentStep = 1;

  void _next() {
    if (_currentStep < _totalSteps) {
      setState(() => _currentStep++);
    }
  }

  void _previous() {
    if (_currentStep > 1) setState(() => _currentStep--);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: AppColors.transparent,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.booking,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 20),
        ),
        leading: IconButton(
          onPressed: () {
            if (_currentStep > 1) {
              _previous();
            } else {
              Navigator.pop(context);
            }
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Theme.of(context).indicatorColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.038),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StepProgressBar(currentStep: _currentStep, totalSteps: _totalSteps),
            SizedBox(height: height * 0.02),
            Expanded(
              child: _currentStep == 1
                  ? FirstTab(
                      onPressed: () {
                        _next();
                      },
                    )
                  : SecondTab(),
            ),
            SizedBox(height: height * 0.01),
          ],
        ),
      ),
    );
  }
}
