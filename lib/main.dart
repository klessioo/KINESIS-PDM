import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const KinesisApp());
}

class KinesisApp extends StatelessWidget {
  const KinesisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinesis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        fontFamily: 'Inter',
      ),
      home: const LoginScreen(),
    );
  }
}