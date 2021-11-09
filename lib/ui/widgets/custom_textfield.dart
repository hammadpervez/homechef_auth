
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? onValidate;
  final String? hintText;
  final IconData? prefixIcon;
  final List<TextInputFormatter>? formaters;
  final TextInputType? keyboardType;
  const CustomInputField({
    Key? key,
    this.controller,
    this.onValidate,
    this.hintText,
    this.formaters,
    this.prefixIcon,
    this.keyboardType,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        validator: onValidate,
        inputFormatters: formaters,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(18, 12, 18, 12),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          hintText: hintText,
        ),
      ),
    );
  }
}
