import 'package:flutter/material.dart';

class CustomContentRow extends StatelessWidget {
  final String leadingText;
  final String trailingText;
  const CustomContentRow({
    super.key,
    required this.leadingText,
    required this.trailingText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              leadingText,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Flexible(
            child: Text(
              trailingText,
              textAlign: TextAlign.end,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}
