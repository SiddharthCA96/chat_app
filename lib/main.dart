import 'package:chatter/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatter/screens/onboarding_screen.dart';
import 'package:chatter/utils/colors.dart';
import 'package:chatter/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatter app',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        OnboardingScreen.routeName:(context)=>const OnboardingScreen(),
        LoginScreen.routeName:(context)=>const LoginScreen(),
        SignupScreen.routeName:(context)=>const SignupScreen(),
      },
      home: const OnboardingScreen(),
    );
  }
}