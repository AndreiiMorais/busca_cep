import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchCepTextfield extends StatelessWidget {
  final String? error;
  final TextEditingController controller;
  final Function(String cep) onSubmitted;
  const SearchCepTextfield({
    super.key,
    this.error,
    required this.controller,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        errorText: error,
      ),
      controller: controller,
      maxLength: 8,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.search,
      onSubmitted: onSubmitted,
    );
  }
}
