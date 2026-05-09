import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class StepProgressBar extends StatelessWidget {
  int currentStep;
  int totalSteps;
  double height;

  StepProgressBar({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    this.height = 15,
  });

  @override
  Widget build(BuildContext context) {
    final fraction = currentStep / totalSteps;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            // Track
            Container(
              height: height,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                color: Theme.of(context).splashColor,
                borderRadius: BorderRadius.circular(99),
              ),
            ),
            // Fill
            AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
              height: height,
              width: constraints.maxWidth * fraction,
              decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(99),
              ),
            ),
          ],
        );
      },
    );
  }
}
