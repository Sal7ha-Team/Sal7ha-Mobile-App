import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  String service;
  ServiceWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.02),
      decoration: BoxDecoration(
        color: Theme.of(context).hoverColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
        vertical: height * 0.008,
        horizontal: width * 0.027,
      ),
      child: Text(
        service,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14),
      ),
    );
  }
}
