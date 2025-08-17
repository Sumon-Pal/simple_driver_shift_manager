import 'package:flutter/material.dart';
import 'package:simple_driver_shift_manager/ui/screens/sign_in_screen.dart';

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInScreen(),
    );
  }
}
