import 'package:flutter/material.dart';
import 'package:graduation/ui/norifications_screen/widgets/notification_widget.dart';

import '../../l10n/app_localizations.dart';

class NotificationsScreen extends StatelessWidget {
  List<NotificationWidget> notifications = [
    NotificationWidget(unRead: false),
    NotificationWidget(unRead: false),
    NotificationWidget(unRead: true),
    NotificationWidget(unRead: false),
    NotificationWidget(unRead: true),
    NotificationWidget(unRead: true),
    NotificationWidget(unRead: false),
  ];
  NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded, color:  Theme.of(context).indicatorColor),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          AppLocalizations.of(context)!.notifications,
          style: Theme.of(context).textTheme.headlineLarge
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.02,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NotificationWidget(unRead: true),
              NotificationWidget(unRead: false),
              NotificationWidget(unRead: true),
              NotificationWidget(unRead: false),
              NotificationWidget(unRead: true),
              NotificationWidget(unRead: false),
              NotificationWidget(unRead: true),
              NotificationWidget(unRead: false),
            ],
          ),
        ),
      ),
    );
  }
}
