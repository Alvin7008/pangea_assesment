import 'package:flutter/material.dart';

import '../../components/constants.dart';

class CustTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;

  CustTextButton({required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: Text(
        text,
        style: const TextStyle(
            color: kPrimaryColor, fontSize: 13.0, fontWeight: FontWeight.w700),
      ),
    );
  }
}
