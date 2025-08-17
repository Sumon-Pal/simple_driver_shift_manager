import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                SizedBox(height: 155),
            Text(
              "Sign In",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: "Mulish",
              ),
            ),
            SizedBox(height: 9),
            Text(
              "Please sign in to continue",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Mulish",
              ),
            ),
            SizedBox(height: 32),
            TextFormField(
              controller: _emailTEController,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 26),
            TextFormField(
              controller: _passwordTEController,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons
                          .visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    }),
              ),
            ),
              SizedBox(height: 28),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                  ),
                  Text("Remember me"),
                ],
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _onTapSignInButton,
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Mulish",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton(){

  }
}
