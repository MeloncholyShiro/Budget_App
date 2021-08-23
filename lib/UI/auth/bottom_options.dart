import 'package:flutter/material.dart';
import 'package:graysoft_budget/UI/auth/login_button.dart';
import 'package:graysoft_budget/constants.dart';

class BottomOptions extends StatelessWidget {
  const BottomOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          LoginButton(),
          SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: () => {},
            child: Text(
              "Dont't have an account?",
              style: TextStyle(
                color: PRIMARY_COLOR,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
