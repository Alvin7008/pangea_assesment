import 'package:flutter/material.dart';

class CustElevatedButton extends StatelessWidget {
  final Size size;
  final Function onclick;
  final bool loading;

  CustElevatedButton(
      {required this.size, required this.onclick, required this.loading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.85,
      child: ElevatedButton(
        onPressed: () {
          onclick(context);
        },
        child: loading
            ? const SizedBox(
                height: 15.0,
                width: 15.0,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ))
            : const Text(
                "Login",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
