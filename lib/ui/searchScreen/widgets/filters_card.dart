import 'package:flutter/material.dart';

class FiltersCard extends StatelessWidget {
  final String text;

  FiltersCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).focusColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              // todo : remove filter tag from list
            },
            child: Icon(
              Icons.close,
              size: 15,
              color: Theme.of(context).focusColor,
            ),
          ),
        ],
      ),
    );
  }
}
