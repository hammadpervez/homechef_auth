import 'package:flutter/material.dart';
import 'package:home_chief/config/routes.dart';
import 'package:home_chief/domain/model/auth_model.dart';
import 'package:home_chief/domain/services/pods/pods.dart';

import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/shared/colors.dart';
import 'package:home_chief/ui/widgets/auth_widget.dart';
import 'package:home_chief/ui/widgets/custom_textfield.dart';
import 'package:home_chief/ui/widgets/formaters.dart';
import 'package:home_chief/ui/widgets/wide_custom_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends ConsumerState<SignUpScreen> {
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
 _onSignUp() {
    ref.read(authService).signUp(UserModel(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text));
  }
  @override
  Widget build(BuildContext context) {
    TextStyle? _secondaryColor = Theme.of(context)
        .textTheme
        .bodyText1
        ?.copyWith(color: AppColors.secondaryColor);
    return AuthScreen(
      onSuccess: () => Navigator.pushReplacementNamed(context, Routes.signin),
      form: Column(
        children: [
          _buildFullName(),
          _buildPhoneField(),
          _buildEmailField(),
          _buildPasswordField(),
          WideCustomButton(title: AppStrings.signUp, onTap: _onSignUp),
          _buildAlreadySignIn(_secondaryColor),
        ],
      ),
    );
  }

  TextButton _buildAlreadySignIn(TextStyle? _secondaryColor) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, Routes.signin),
      child: Text.rich(
        TextSpan(children: [
          const TextSpan(text: 'Already have an acccount?'),
          const WidgetSpan(child: SizedBox(width: 5)),
          TextSpan(text: 'Sign In', style: _secondaryColor),
        ]),
      ),
    );
  }

  CustomInputField _buildPasswordField() {
    return CustomInputField(
      isPassword: true,
      controller: passwordController,
      hintText: AppStrings.enterPassword,
    );
  }

  CustomInputField _buildEmailField() {
    return CustomInputField(
      controller: emailController,
      hintText: AppStrings.enterEmail,
      formaters: [emailFormat],
      keyboardType: TextInputType.emailAddress,
    );
  }

  CustomInputField _buildPhoneField() {
    return CustomInputField(
      controller: phoneController,
      keyboardType: TextInputType.phone,
      hintText: AppStrings.enterPhoneNo,
      formaters: [phoneLengthFormat, phoneNoFormat],
    );
  }

  CustomInputField _buildFullName() {
    return CustomInputField(
      controller: nameController,
      hintText: AppStrings.enterName,
      keyboardType: TextInputType.name,
      formaters: [nameLengthFormat, nameFormat],
    );
  }

 
}
