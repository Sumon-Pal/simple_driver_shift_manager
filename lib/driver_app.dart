import 'package:flutter/material.dart';
import 'package:simple_driver_shift_manager/ui/screens/sign_in_screen.dart';

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
          errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(170, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            padding: EdgeInsets.symmetric(vertical: 12),
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
