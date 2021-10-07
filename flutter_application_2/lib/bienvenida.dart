import 'package:flutter/material.dart';

import 'package:flutter_application_2/menu.dart';

class Bienvenida extends StatefulWidget {
  //Bienvenida();

  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    //Map parametros  ; //ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        backgroundColor: Colors.black,
      ),
      drawer: Menu(),
      body: ListView(
        children: [
          Container(
            child: Text(
              'Bienvenid@ ',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
