import 'package:flutter/material.dart';
import 'package:pawrent/home/profile/userprofile.dart';

import '../veterinaria/foundationslist.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.indigo,
      theme: ThemeData(primaryColor: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 80,
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          title: Text("Camilo Fernandez"),
          leading: IconButton(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/34454204?v=4"),
              radius: 30.0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserProfile()),
              );
            },
          ),
          toolbarHeight: 70,
          actions: [
            Container(
                margin: EdgeInsets.only(right: 10.0),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.report_problem_outlined,
                      color: Colors.indigo,
                      size: 30,
                    )))
          ],
        ),
        body: Container(
          color: Colors.grey[200],
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 100.0),
                        child: Column(
                          children: [Text("Novedades"), Text("Lorem Ipsum")],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                          child: Image(
                              image: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/34454204?v=4",
                                  scale: 2.5)))
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch(_selectedIndex){
      case 0:{
        print("Vet");
      }
      break;
      case 1:{
        print("Adopt");
      }
      break;
      case 2:{
        print("Home");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      }
      break;
      case 3:{
        print("Found");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FoundationsList()),
        );
      }
      break;
      case 4:{
        print("Config");
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.local_hospital_outlined, color: Colors.indigo),
          label: 'Veterinaria',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets, color: Colors.indigo),
          label: 'Adoptar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.indigo),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.volunteer_activism_outlined, color: Colors.indigo),
          label: 'Fundaciones',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.indigo),
          label: 'Configuración',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.indigo,
      onTap: _onItemTapped,
    );
  }
}
