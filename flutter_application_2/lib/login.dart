import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  final user = TextEditingController();
  final pass = TextEditingController();
  //variables to save what income
  String usr = '';
  String psswrd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode focus = FocusScope.of(context);
          if (!focus.hasPrimaryFocus && focus.hasFocus) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: ListView(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                alignment: Alignment.center,
                child: Image.asset('assets/logo.png')),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: user,
                decoration: InputDecoration(hintText: "user"),
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

                  if (usr == '' || psswrd == '') {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('ATENCIÓN'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: [Text('Verificar tus datos')],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: Text('Aceptar'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.pushNamed(context, '/bienvenida',
                        arguments: {'user': usr, 'password': psswrd});
                    FocusScope.of(context).unfocus();
                  }
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
      ),
    );
  }
}
