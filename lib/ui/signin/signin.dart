import 'package:flutter/material.dart';
import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/ui/widgets/auth_widget.dart';
import 'package:home_chief/ui/widgets/custom_textfield.dart';
import 'package:home_chief/ui/widgets/formaters.dart';
import 'package:home_chief/ui/widgets/wide_custom_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignUpFormScreenState createState() => _SignUpFormScreenState();
}

class _SignUpFormScreenState extends State<SignInScreen> {
  late TextEditingController phoneController, passwordController;

  @override
  void initState() {
    super.initState();

    phoneController = TextEditingController();

    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    phoneController.dispose();

    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScreen(
      form: Column(
        children: [
          CustomInputField(
            controller: phoneController,
            keyboardType: TextInputType.phone,
            hintText: AppStrings.enterPhoneNo,
            formaters: [phoneLengthFormat, phoneNoFormat],
          ),
          CustomInputField(
            controller: passwordController,
            hintText: AppStrings.enterPassword,
          ),
          WideCustomButton(title: AppStrings.signin, onTap: () {})
        ],
      ),
    );
  }
}
