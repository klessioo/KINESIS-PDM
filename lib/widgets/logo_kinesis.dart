import 'package:flutter/material.dart';

class LogoKinesis extends StatelessWidget {
  const LogoKinesis({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo_kinesis.png',
      width: 341.87,
      height: 96.0,
      fit: BoxFit.contain,
    );
  }
}
