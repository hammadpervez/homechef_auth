import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_chief/config/routes.dart';

import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/ui/widgets/auth_widget.dart';
import 'package:home_chief/ui/widgets/custom_textfield.dart';
import 'package:home_chief/ui/widgets/formaters.dart';
import 'package:home_chief/ui/widgets/wide_custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpScreen> {
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
    return AuthScreen(
      form: Column(
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
          WideCustomButton(
              title: AppStrings.signUp,
              onTap: () {
                Navigator.pushNamed(context, Routes.signin);
              })
        ],
      ),
    );
  }
}
