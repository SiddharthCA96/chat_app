import 'package:chatter/resources/auth_method.dart';
import 'package:chatter/screens/home_screen.dart';
import 'package:chatter/widgets/custom_button.dart';
import 'package:chatter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName='/signup';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreen();
}

class _SignupScreen extends State<SignupScreen> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _usernameController=TextEditingController();
  final AuthMethod _authMethods =AuthMethod();
  void signUpUser() async{
    bool res= await _authMethods.signUpUser(
      context, 
      _emailController.text,
      _usernameController.text,
      _passwordController.text,
      );

      if(res){
        Navigator.pushNamed(context, HomeScreen.routeName);
      }
  }

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height*0.1),
              const Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomText(controller: _emailController),
              ),
              const SizedBox(height: 20,),
              const Text(
                'UserName',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomText(controller: _usernameController),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: CustomText(controller: _passwordController),
              ),
              const SizedBox(height: 20,),
              CustomButton(onTap:(){}, text: 'Sign Up'),
              
            ],
          ),
        ),
      ),
    );
  }
}