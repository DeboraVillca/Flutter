import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text('USER'),
                accountEmail: Text('useremail@gmail.com'),
                currentAccountPicture: Image.asset('perfil.png')),
            ListTile(
              title: Text('perfil'),
              leading: Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: Text('calendario'),
              leading: Icon(Icons.calendar_today),
              onTap: () {},
            ),
          ],
        ),
      ),
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
