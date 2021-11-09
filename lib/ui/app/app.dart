import 'package:flutter/material.dart';
import 'package:home_chief/config/routes.dart';
import 'package:home_chief/shared/app_strings.dart';
import 'package:home_chief/shared/colors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: _textTheme(),
        colorScheme: _colorLightSchemeTheme(),
        elevatedButtonTheme: _elevatedButtonTheme(),
        inputDecorationTheme: _inputDecorationTheme(),
        
      ),
      title: AppStrings.appTitle,
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: Routes.signup,
    );
  }

  ColorScheme _colorLightSchemeTheme() {
    return const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
    );
  }

  TextTheme _textTheme() {
    return const TextTheme(subtitle1: TextStyle(color: AppColors.primaryColor));
  }

  ElevatedButtonThemeData _elevatedButtonTheme() {
    return ElevatedButtonThemeData(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))));
  }

  InputDecorationTheme _inputDecorationTheme() {
    return InputDecorationTheme(
      enabledBorder: defaultBorder,
      focusedBorder: defaultBorder,
      isDense: true,
    );
  }

  InputBorder get defaultBorder => OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primaryColor),
      borderRadius: BorderRadius.circular(50));
}
