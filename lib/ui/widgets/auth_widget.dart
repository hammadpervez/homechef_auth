import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_chief/config/routes.dart';

import 'package:home_chief/domain/services/auth_service.dart';
import 'package:home_chief/domain/services/pods/pods.dart';
import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/shared/extensions.dart';
import 'package:home_chief/shared/images.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({Key? key, required this.form, required this.onSuccess})
      : super(key: key);
  final Widget form;

  final VoidCallback onSuccess;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _authListener(context, ref);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.fixedHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Expanded(child: _buildAppImage(context)),
                Expanded(flex: 2, child: form),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppImage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Images.logo, width: context.fixedHeight * .4),
        Text(AppStrings.welcomeToHomeChef,
            style: Theme.of(context).textTheme.headline6),
      ],
    );
  }

  void _authListener(BuildContext context, WidgetRef ref) {
    ref.listen<AuthService>(authService, (prev, next) {
      if (next.status == AuthStatus.loading) {
        _showLoader(context);
      } else if (next.status == AuthStatus.error) {
        //popping off loader
        Navigator.pop(context);
        //Hiding any snackbar that overlapping
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(next.error!)));
      } else {
        //popping off loader
        Navigator.pop(context);
        if (next.authType == AuthType.signin) {
          Navigator.pushNamedAndRemoveUntil(
              context, Routes.home, (route) => false);
        } else {
          Navigator.pushReplacementNamed(context, Routes.signin);
        }
      }
    });
  }

  Future<dynamic> _showLoader(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircularProgressIndicator(),
                ],
              ),
            ));
  }
}
