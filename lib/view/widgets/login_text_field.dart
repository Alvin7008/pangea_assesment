import 'package:flutter/material.dart';
import '../../components/constants.dart';

class LoginTextField extends StatelessWidget {
  final String hText;
  final bool obscureText;

  LoginTextField({required this.hText, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
      height: 40.0,
      width: size.width * 0.85,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(10.0)),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hText,
            hintStyle: TextStyle(
              color: kTextColor.withOpacity(0.5),
            )),
      ),
    );
  }
}
