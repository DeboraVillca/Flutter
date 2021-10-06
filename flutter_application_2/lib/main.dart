import 'package:flutter/material.dart';
import 'package:flutter_application_2/bienvenida.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/login': (context) => login(),
      '/bienvenida': (context) => Bienvenida()
    },
    initialRoute: '/login',
  ));
}
