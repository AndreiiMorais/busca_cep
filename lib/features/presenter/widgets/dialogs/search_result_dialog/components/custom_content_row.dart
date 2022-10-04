import 'package:flutter/material.dart';

class CustomContentRow extends StatelessWidget {
  final String leadingText;
  final String trailingText;
  const CustomContentRow({
    Key? key,
    required this.leadingText,
    required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(child: Text(leadingText)),
          Flexible(child: Text(trailingText)),
        ],
      ),
    );
  }
}
