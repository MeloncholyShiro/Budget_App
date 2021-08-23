import 'package:flutter/material.dart';

class MockScreen extends StatelessWidget {
  const MockScreen({Key? key, required this.textContent}) : super(key: key);

  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textContent,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
