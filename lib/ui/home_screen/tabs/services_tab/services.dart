import 'package:flutter/material.dart';
import 'package:graduation/ui/home_screen/tabs/services_tab/widgets/service_category.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_routes.dart';

class ServicesTab extends StatefulWidget {

  const ServicesTab({super.key});

  @override
  State<ServicesTab> createState() => _ServicesTabState();
}

class _ServicesTabState extends State<ServicesTab> {
  TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<ServiceCategory> servicesCategories = [
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.oil,
        serviceIcon: AppAssets.oilGalonIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.engine,
        serviceIcon: AppAssets.engineIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.painting,
        serviceIcon: AppAssets.paintIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.suspension,
        serviceIcon: AppAssets.suspentionIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.wheels,
        serviceIcon: AppAssets.wheelIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.battery,
        serviceIcon: AppAssets.batteryIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.battery,
        serviceIcon: AppAssets.batteryIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.battery,
        serviceIcon: AppAssets.batteryIcon,
      ),
      ServiceCategory(
        serviceName: AppLocalizations.of(context)!.battery,
        serviceIcon: AppAssets.batteryIcon,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, AppRoutes.homeScreen);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.black),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          AppLocalizations.of(context)!.services,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 20) ,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric( horizontal: 20 , vertical: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20
                ),
                itemBuilder: (context, index) {
                  return servicesCategories[index];
                },
                itemCount: servicesCategories.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
