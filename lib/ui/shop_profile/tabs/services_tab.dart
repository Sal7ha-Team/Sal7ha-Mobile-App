import 'package:flutter/material.dart';

import '../widgets/service_widget.dart';

class ServicesTab extends StatelessWidget {
  ServicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ServiceWidget(service: "Engine Oil Change"),
          ServiceWidget(service: "Engine Diagnostics & Checkup"),
          ServiceWidget(service: "Engine Overhaul / Rebuild"),
          ServiceWidget(service: "Spark Plug Replacement"),
          ServiceWidget(service: "Timing Belt / Chain Replacement"),
          ServiceWidget(service: "Conventional Oil Service"),
          ServiceWidget(service: "Oil Filter Replacement"),
        ],
      ),
    );
  }
}
