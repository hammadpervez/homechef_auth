import 'package:flutter/material.dart';
import 'package:home_chief/ui/home/home.dart';
import 'package:home_chief/ui/signin/signin.dart';

import 'package:home_chief/ui/signup/signup.dart';

class Routes {
  static const signup = '/signup';
  static const signin = '/signin';
  static const home = '/home';
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signup:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case signin:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
