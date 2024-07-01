import 'package:chatter/screens/home_screen.dart';
import 'package:chatter/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chatter/screens/onboarding_screen.dart';
import 'package:chatter/utils/colors.dart';
import 'package:chatter/screens/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        HomeScreen.routeName:(context)=>const HomeScreen(),
      },
      home: const OnboardingScreen(),
    );
  }
}