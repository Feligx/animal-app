import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final name_field = TextEditingController();
    final surname_field = TextEditingController();
    final email_field = TextEditingController();
    final tel_field = TextEditingController();
    final pwd_field = TextEditingController();

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: ListView(children: [
          Row(children: [
            IconButton(
              iconSize: 40.0,
              icon: const Icon(Icons.chevron_left_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
          Container(
            height: queryData.size.height * 0.1,
            child: Image.asset((isDark) ? 'assets/logo_dark.png' : 'assets/logo_light.png',
              //NetworkImage('https://raw.githubusercontent.com/Feligx/animal-app/main/pawrent_logo-removebg.png'),            ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Crea una cuenta",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: (isDark)?Colors.white : Colors.indigo),
                    )),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    controller: name_field,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nombres',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    controller: surname_field,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Apellidos',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    controller: email_field,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Correo Electrónico',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    controller: tel_field,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Teléfono',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                    controller: pwd_field,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(queryData.size.width, 60.0)),
                    onPressed: () async {
                      //var name = name_field.text;
                      //var surname = surname_field.text;
                      var pass = pwd_field.text;
                      var email = email_field.text;
                      //var tel = tel_field.text;

                      try {
                        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: email,
                            password: pass
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: const Text('Siguiente'),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
