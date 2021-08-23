import 'package:flutter/material.dart';
import 'package:graysoft_budget/UI/auth/login_button.dart';
import 'package:graysoft_budget/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                child: Center(
                  child: TextFormField(
                    initialValue: 'Login',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    LoginButton(),
                    SizedBox(height: 8),
                    TextButton(
                      onPressed: () => {},
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          color: PRIMARY_COLOR,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
