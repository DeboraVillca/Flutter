import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/perfil');
            },
          ),
          ListTile(
            title: Text('calendario'),
            leading: Icon(Icons.calendar_today),
            onTap: () {},
          ),
          ListTile(
            title: Text('ajustes'),
            leading: Icon(Icons.hardware),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
