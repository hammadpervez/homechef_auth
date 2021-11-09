import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/shared/extensions.dart';
import 'package:home_chief/shared/images.dart';
import 'package:home_chief/ui/widgets/formaters.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late TextEditingController nameController,
      phoneController,
      emailController,
      passwordController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(Images.logo, width: context.width * .8),
                      Text(AppStrings.welcomeToHomeChef),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      CustomInputField(
                        controller: nameController,
                        hintText: AppStrings.enterName,
                        keyboardType: TextInputType.name,
                        formaters: [nameLengthFormat, nameFormat],
                      ),
                      CustomInputField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        hintText: AppStrings.enterPhoneNo,
                        formaters: [phoneLengthFormat, phoneNoFormat],
                      ),
                      CustomInputField(
                        controller: emailController,
                        hintText: AppStrings.enterEmail,
                        formaters: [emailFormat],
                        keyboardType: TextInputType.emailAddress,
                      ),
                      CustomInputField(
                        controller: passwordController,
                        hintText: AppStrings.enterPassword,
                      ),
                      WideCustomButton()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WideCustomButton extends StatelessWidget {
  const WideCustomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: .8,
      child: ElevatedButton(
          onPressed: () {}, child: const Text(AppStrings.signUp)),
    );
  }
}

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
