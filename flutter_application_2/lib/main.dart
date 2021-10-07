import 'package:flutter/material.dart';
import 'package:flutter_application_2/bienvenida.dart';
import 'login.dart';
import 'package:flutter_application_2/perfil.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/login': (context) => login(),
      '/bienvenida': (context) => Bienvenida(),
      '/perfil': (context) => Perfil(),
    },
    initialRoute: '/login',
  ));
}
