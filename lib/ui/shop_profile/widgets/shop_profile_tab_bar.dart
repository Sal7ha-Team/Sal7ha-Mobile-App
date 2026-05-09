import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_colors.dart';

class ShopProfileTabBar extends StatefulWidget {
  final Function(int) onTabSelected;
  const ShopProfileTabBar({super.key, required this.onTabSelected});

  @override
  State<ShopProfileTabBar> createState() => _ShopProfileTabBarState();
}

class _ShopProfileTabBarState extends State<ShopProfileTabBar> {
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    final tabs = [
      AppLocalizations.of(context)!.about,
      AppLocalizations.of(context)!.services,
      AppLocalizations.of(context)!.reviews,
    ];
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor, width: 1),
        color: Theme.of(context).disabledColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: List.generate(tabs.length, (index) {
          final isSelected = selectedIndex == index;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
                widget.onTabSelected(index);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.yellow : AppColors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    tabs[index],
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: isSelected
                          ? FontWeight.w700
                          : FontWeight.w400,
                      color: isSelected ? AppColors.darkBlack : AppColors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
