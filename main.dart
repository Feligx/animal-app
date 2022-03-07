import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Row(
                  children:[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child:Text("Iniciar Sesión", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                    ),
                  ]
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username',
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
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child:ElevatedButton(
                        style: ElevatedButton.styleFrom(minimumSize: Size(queryData.size.width, 60.0)),
                        onPressed: (){},
                        child: const Text('Iniciar Sesión'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child:ElevatedButton(
                        style: ElevatedButton.styleFrom(minimumSize: Size(queryData.size.width, 60.0), primary: Colors.orange),
                        onPressed: (){},
                        child: const Text('Registrarse'),
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
