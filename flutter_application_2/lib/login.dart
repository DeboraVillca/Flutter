import 'package:flutter/material.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  final user = TextEditingController();
  final pass = TextEditingController();
  String usr = '';
  String psswrd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              alignment: Alignment.center,
              child: Image.asset('assets/logo.png')),
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              controller: user,
              decoration: InputDecoration(hintText: "User"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: TextField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(hintText: 'password'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(25),
            alignment: Alignment.center,
            // ignore: deprecated_member_use
            child: RaisedButton(
              color: Colors.black,
              onPressed: () {
                usr = user.text;
                psswrd = pass.text;
                print(usr + " " + psswrd);
                if (usr == '' && psswrd == '') {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('PRIMERA APP'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [Text('Verificar tus datos')],
                          ),
                        ),
                        actions: [
                          FlatButton(
                            child: Text('Aceptar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    },
                  );
                } else {}
                user.text = '';
                pass.text = '';
              },
              child: Text(
                'Ingresar',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
