import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? onValidate;
  final String? hintText;
  final IconData? prefixIcon;
  final List<TextInputFormatter>? formaters;
  final TextInputType? keyboardType;
  final bool isPassword;
  const CustomInputField({
    Key? key,
    this.controller,
    this.onValidate,
    this.hintText,
    this.formaters,
    this.prefixIcon,
    this.keyboardType,
    this.isPassword = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isPassword,
        controller: controller,
        validator: onValidate,
        inputFormatters: formaters,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          hintText: hintText,
        ),
      ),
    );
  }
}
