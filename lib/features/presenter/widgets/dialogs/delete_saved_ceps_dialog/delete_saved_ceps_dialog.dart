import 'package:flutter/material.dart';

Future<T?> showDeleteSavedCepsDialog<T>({
  required BuildContext context,
  VoidCallback? onConfimTap,
  VoidCallback? onCancelTap,
}) {
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Excluir Ceps salvos'),
        content: const Text('Você tem certeza?'),
        actions: [
          ElevatedButton(
            onPressed: () {
              onConfimTap;
            },
            child: const Text('Confirmar'),
          ),
          TextButton(
            onPressed: () {
              onCancelTap;
            },
            child: const Text('Cancelar'),
          ),
        ],
      );
    },
  );
}
