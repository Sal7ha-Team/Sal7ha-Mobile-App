import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/app_assets.dart';
import '../widgets/about_shop_profile_row.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AboutShopProfileRow(
          title: AppLocalizations.of(context)!.shop_rate,
          iconPath: AppAssets.unFilledStarIcon,
          subtitle: "4.99 of 46 reviews",
        ),
        AboutShopProfileRow(
          title: AppLocalizations.of(context)!.shop_location,
          iconPath: AppAssets.locationPinIcon,
          subtitle: "Moscow, 215750, Верхнеднепровский, Smolensk, Russia",
        ),
        AboutShopProfileRow(
          title: AppLocalizations.of(context)!.shop_phone_number,
          iconPath: AppAssets.phoneIcon,
          subtitle: "+7 495 xxx xxxx",
        ),
        AboutShopProfileRow(
          title: AppLocalizations.of(context)!.shop_working_days,
          iconPath: AppAssets.calenderIcon,
          subtitle: "Sat - Thu / 9AM - 8PM",
        ),
        AboutShopProfileRow(
          title: AppLocalizations.of(context)!.shop_facility_type,
          iconPath: AppAssets.garageIcon,
          subtitle: AppLocalizations.of(context)!.repair_shop,
        ),
        AboutShopProfileRow(
          title: AppLocalizations.of(context)!.shop_whatsapp,
          iconPath: AppAssets.whatsAppIcon,
          subtitle: "+7 495 xxx xxxx",
        ),
        AboutShopProfileRow(
          title: AppLocalizations.of(context)!.shop_facebook,
          iconPath: AppAssets.facebookShopIcon,
          subtitle: "www.facebook.com",
        ),
        AboutShopProfileRow(
          isLast: true,
          title: AppLocalizations.of(context)!.shop_instagram,
          iconPath: AppAssets.instagramIcon,
          subtitle: "www.instagram.com",
        ),
      ],
    );
  }
}
