import 'package:flutter/material.dart';

class Bienvenida extends StatefulWidget {
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      body: ListView(
        children: [
          Container(
            child: Text(
              'Bienvenido',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}