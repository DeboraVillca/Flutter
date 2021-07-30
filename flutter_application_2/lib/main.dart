import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: login(),
      ),
    );
  }
}
