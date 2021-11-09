import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/shared/extensions.dart';
import 'package:home_chief/shared/images.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key, required this.form}) : super(key: key);
  final Widget form;

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
                      Text(AppStrings.welcomeToHomeChef,
                          style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: form,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
