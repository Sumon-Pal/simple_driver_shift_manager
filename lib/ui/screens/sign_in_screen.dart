import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,),
            ),
            Text("Please sign in to continue",style: TextStyle(fontSize:14, fontWeight: FontWeight.w400),),

          ],
        ),
      ),
    );
  }
}
