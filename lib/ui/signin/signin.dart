import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_chief/config/routes.dart';
import 'package:home_chief/domain/model/auth_model.dart';
import 'package:home_chief/domain/services/pods/pods.dart';
import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/ui/widgets/auth_widget.dart';
import 'package:home_chief/ui/widgets/custom_textfield.dart';
import 'package:home_chief/ui/widgets/formaters.dart';
import 'package:home_chief/ui/widgets/wide_custom_button.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignUpFormScreenState createState() => _SignUpFormScreenState();
}

class _SignUpFormScreenState extends ConsumerState<SignInScreen> {
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

  _onSignIn() {
    ref.read(authService).signIn(UserModel(
        phone: phoneController.text, password: passwordController.text));
  }

  @override
  Widget build(BuildContext context) {
    return AuthScreen(
      onSuccess: () =>
          Navigator.pushNamedAndRemoveUntil(context, Routes.home, (_) => false),
      form: Column(
        children: [
          _phoneField(),
          _passwordField(),
          WideCustomButton(title: AppStrings.signin, onTap: _onSignIn)
        ],
      ),
    );
  }

  CustomInputField _passwordField() {
    return CustomInputField(
      isPassword: true,
      controller: passwordController,
      hintText: AppStrings.enterPassword,
    );
  }

  CustomInputField _phoneField() {
    return CustomInputField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      hintText: AppStrings.enterPhoneNo,
      formaters: [phoneLengthFormat, phoneNoFormat],
    );
  }
}
