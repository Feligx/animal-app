import 'package:flutter/material.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: ListView(children: [
          Row(children: [
            IconButton(
              iconSize: 30.0,
              icon: const Icon(Icons.chevron_left_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
          Container(
            height: queryData.size.height * 0.1,
            child: const Image(
              image: NetworkImage(
                  'https://raw.githubusercontent.com/Feligx/animal-app/main/pawrent_logo-removebg.png'),
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
                          color: Colors.indigo),
                    )),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
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
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Teléfono',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
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
                    onPressed: () {},
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
