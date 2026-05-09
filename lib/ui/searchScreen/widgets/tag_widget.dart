import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  IconData icon;
  String label;
  TagWidget({super.key , required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
        vertical: height * 0.01,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).hoverColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Icon(icon, size: 15, color: Theme.of(context).indicatorColor),
          SizedBox(width: width * 0.01),
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.labelSmall!.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}