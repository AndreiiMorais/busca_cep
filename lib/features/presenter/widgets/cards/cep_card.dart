import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:flutter/material.dart';

class CepCard extends StatelessWidget {
  final CepEntity cep;
  final VoidCallback? onTap;
  const CepCard({
    required this.cep,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        title: Text(cep.cep),
        subtitle: Text(cep.city),
        trailing: Icon(
          Icons.pin_drop,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
