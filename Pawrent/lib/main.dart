import 'package:flutter/material.dart';
import 'package:pawrent/home/home1.dart';
import 'package:pawrent/register.dart';
import 'package:pawrent/home/home.dart';
import 'package:pawrent/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pawrent',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final usr_field = TextEditingController();
  final pass_field = TextEditingController();

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Container(
        child: ListView(children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.asset((isDark) ? 'assets/logo_dark.png' : 'assets/logo_light.png',
                scale: (queryData.size.width-40)/30
              //NetworkImage('https://raw.githubusercontent.com/Feligx/animal-app/main/pawrent_logo-removebg.png'),            ),
            ),
          ),
          Row(children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: const Text(
                "Iniciar Sesión",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextField(
                    controller: usr_field,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextField(
                    controller: pass_field,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(queryData.size.width, 60.0)),
                    onPressed: () async {
                      var usr = usr_field.text;
                      var pass = pass_field.text;
                      print(usr);
                      print(pass);

                      if (usr != "" && pass != "") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home1()),
                        );
                      }
                    },
                    child: const Text('Iniciar Sesión'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(queryData.size.width, 60.0),
                        primary: Colors.orange),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => register()),
                      );
                    },
                    child: const Text('Registrarse'),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(queryData.size.width);
          print(queryData.size.width-40);
          print((queryData.size.width-40)/30);
          },
        child: const Icon(
          Icons.report_problem_outlined,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
