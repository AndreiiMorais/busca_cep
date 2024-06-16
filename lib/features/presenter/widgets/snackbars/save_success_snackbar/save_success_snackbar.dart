import 'package:flutter/material.dart';

class SaveSuccessSnackbar extends SnackBar {
  SaveSuccessSnackbar({
    super.key,
    required BuildContext context,
    String message = 'Cep salvo com sucesso!',
  }) : super(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  message,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar(
                    reason: SnackBarClosedReason.action,
                  );
                },
                child: Text(
                  'Ok',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
        );
}
