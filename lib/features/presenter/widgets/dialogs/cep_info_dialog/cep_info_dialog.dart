import 'package:busca_cep/features/domain/entities/cep_entity.dart';
import 'package:flutter/material.dart';

import 'components/custom_content_row.dart';

Future<T?> showCepInfoDialog<T>({
  required BuildContext context,
  required CepEntity cep,
  Widget? primaryButton,
  Widget? secondaryButton,
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
          if (primaryButton != null) primaryButton,
          if (secondaryButton != null) secondaryButton,
        ],
        actionsAlignment: MainAxisAlignment.spaceEvenly,
      );
    },
  );
}
