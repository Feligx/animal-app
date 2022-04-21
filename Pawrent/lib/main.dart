import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pawrent/home/home1.dart';
import 'package:pawrent/register.dart';
import 'package:pawrent/home/home.dart';
import 'package:pawrent/themes/themes.dart';

import 'acc_type_selection.dart';
import 'auth/googleAuth.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseAuth.instance
      .userChanges()
      .listen((User? user) {
    //user is not logged in
    if (user == null) {
      runApp(const MyApp());
    }
    //user is logged in
    else {
      runApp(
          MaterialApp(
            title: 'Pawrent',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            home: Home1(),
          )
      );
    }
  });
  //runApp(const MyApp());
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
      body: ListView(children: [
        Image.asset(
            (isDark) ? 'assets/logo_white_login.png' : 'assets/logo_light.png',
            scale: (queryData.size.width - 40) / 30
            //NetworkImage('https://raw.githubusercontent.com/Feligx/animal-app/main/pawrent_logo-removebg.png'),            ),
            ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: queryData.size.width,
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: const Text(
                "Iniciar Sesión",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              margin: EdgeInsets.only(bottom: 20.0),
              child: TextField(
                controller: usr_field,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
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
                    minimumSize: Size(queryData.size.width, 50.0)),
                onPressed: () async {
                  var usr = usr_field.text;
                  var pass = pass_field.text;
                  print(usr);
                  print(pass);

                  try {
                    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: usr,
                        password: pass
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      print('No user found for that email.');
                    } else if (e.code == 'wrong-password') {
                      print('Wrong password provided for that user.');
                    }
                  }
                },
                child: const Text('Iniciar Sesión'),
              ),
            ),

          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 30.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.all(10.0),
              shape: CircleBorder()
            ),
              onPressed: () async{
                signInWithGoogle();
              },
              child: Image.asset('assets/icons/google.png', height: 30,)
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder()
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home1()));
              },
              child: Image.asset('assets/icons/apple.png', height: 30,)
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder()
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home1()));
              },
              child: Image.asset('assets/icons/facebook.png', height: 30,)
          ),
        ]),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0),
            child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: TextButton(
                  child: Text('¿Olvidaste tu contraseña?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),),
                  onPressed: (){}
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: TextButton(
                  child: Text('¿No tienes una cuenta?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15.0),),
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => accType()));
                  }
                ),
              ),
            ),
          ],
        ))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(queryData.size.width);
          print(queryData.size.width - 40);
          print((queryData.size.width - 40) / 30);
        },
        child: const Icon(
          Icons.report_problem_outlined,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
