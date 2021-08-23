import 'package:flutter/material.dart';
import 'package:graysoft_budget/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed('/application'),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: PRIMARY_COLOR,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Login',
            style: H2_TEXT_STYLE,
          ),
        ),
      ),
    );
  }
}
