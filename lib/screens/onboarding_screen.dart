import 'package:flutter/material.dart';
import 'package:chatter/screens/login_screen.dart';
import 'package:chatter/screens/signup_screen.dart';
import 'package:chatter/widgets/custom_button.dart';

//import 'package:chatter/screens/login_screen.dart';
class OnboardingScreen extends StatelessWidget{
  static const routeName='/onboarding';
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to \nChatter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: CustomButton(onTap: (){
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
              text: 'Log in'),
            ),
            CustomButton(onTap: (){
              Navigator.pushNamed(context, SignupScreen.routeName);
            },
            text: 'Sign Up'),
          ],
        ),
      ),
    );
  }
}