import 'package:flutter/material.dart';

class DistrictCard extends StatelessWidget {
  final String district;
  const DistrictCard({
    required this.district,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        title: Text(district),
        trailing: Icon(
          Icons.pin_drop,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
