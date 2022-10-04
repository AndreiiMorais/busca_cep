import 'package:flutter/material.dart';

class ErrorSnackbar extends SnackBar {
  ErrorSnackbar({
    Key? key,
    required BuildContext context,
    String message = 'Ops! Ocorreu um erro inesperado',
  }) : super(
          key: key,
          backgroundColor: const Color.fromARGB(255, 212, 0, 0),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  message,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.black),
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
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: Colors.black),
                ),
              )
            ],
          ),
        );
}
