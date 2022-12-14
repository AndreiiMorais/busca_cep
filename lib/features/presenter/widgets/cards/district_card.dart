import 'package:flutter/material.dart';

class DistrictCard extends StatelessWidget {
  final String district;
  final VoidCallback? onTap;
  const DistrictCard({
    required this.district,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(district),
        trailing: Icon(
          Icons.pin_drop,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
