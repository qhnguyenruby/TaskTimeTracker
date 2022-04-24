import 'package:flutter/widgets.dart';
import '/screens/comfirm_forgot_password/comfirm_forgot_password_screen.dart';
import '/screens/forgot_password/forgot_password_screen.dart';
import '/screens/home/home_screen.dart';
import '/screens/sign_in/sign_in_screen.dart';
import '/screens/sign_up/sign_up_screen.dart';
import '/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  ConfirmForgotPasswordScreen.routeName: (context) =>
      ConfirmForgotPasswordScreen(),
};
