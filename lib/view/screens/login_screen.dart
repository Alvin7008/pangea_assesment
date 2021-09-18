import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../widgets/logo_with_title.dart';
import '../widgets/cutom_elevated_button.dart';
import '../widgets/login_text_field.dart';
import '../widgets/cust_text_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/loginScreen';

  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _loading = false;

  void _openLoginScreen(ctx) {
    setState(() {
      _loading = true;
    });

    Timer(Duration(seconds: 2), () {
      Navigator.popAndPushNamed(ctx, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWithTitle(),
              const SizedBox(
                height: 20.0,
              ),
              LoginTextField(
                hText: "Username or Email",
                obscureText: false,
              ),
              const SizedBox(
                height: 20.0,
              ),
              LoginTextField(
                hText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustElevatedButton(
                size: size,
                onclick: _openLoginScreen,
                loading: _loading,
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustTextButton(
                text: "Forgot Password?",
                onClick: () {},
              ),
              const Text(
                "or",
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: 10.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "New to Pange App?",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w700),
                  ),
                  CustTextButton(
                    text: "Register",
                    onClick: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
