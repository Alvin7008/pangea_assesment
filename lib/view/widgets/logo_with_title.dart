import 'package:flutter/material.dart';

import '../../components/constants.dart';

class LogoWithTitle extends StatelessWidget {
  const LogoWithTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.0,
          width: 50.0,
          child: Image.asset(
            "assets/logo/umf_logo.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          "Unified Medical File",
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
