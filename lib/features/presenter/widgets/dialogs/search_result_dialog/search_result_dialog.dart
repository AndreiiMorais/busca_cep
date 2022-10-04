import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:flutter/material.dart';

import 'components/custom_content_row.dart';

Future<T?> showSearchResultDialog<T>({
  required BuildContext context,
  required CepEntity cep,
  VoidCallback? onSavePressed,
  VoidCallback? onDiscardPressed,
}) {
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Center(
          child: Text(cep.cep),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomContentRow(
              leadingText: 'Estado',
              trailingText: cep.uf,
            ),
            CustomContentRow(
              leadingText: 'Cidade',
              trailingText: cep.city,
            ),
            CustomContentRow(
              leadingText: 'Bairro',
              trailingText: cep.district,
            ),
            CustomContentRow(
              leadingText: 'Logradouro',
              trailingText: cep.publicPlace,
            ),
            CustomContentRow(
              leadingText: 'Complemento',
              trailingText: cep.complement,
            ),
            CustomContentRow(
              leadingText: 'DDD',
              trailingText: cep.ddd,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: onDiscardPressed,
            child: Text(
              'Descartar',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: onSavePressed,
            child: const Text('Salvar Cep'),
          ),
        ],
        actionsAlignment: MainAxisAlignment.spaceEvenly,
      );
    },
  );
}
