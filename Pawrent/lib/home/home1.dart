import 'package:flutter/material.dart';
import 'package:pawrent/home/userprofile.dart';
import 'package:pawrent/adopt/adopt.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _selectedIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  static const List<Widget> _widgetOptions = <Widget>[
    pagvet(),
    pagadopt(),
    paghome(),
    pagfun(),
    Text(
      'Index 4: Settings',
      style: TextStyle(fontSize: 18),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        leadingWidth: 80,
//        titleTextStyle: TextStyle(
//            fontWeight: FontWeight.bold, fontSize: 18),
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
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_outlined,),
            label: 'Veterinaria',
            backgroundColor: (isDark)?Colors.black : null,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Adoptar',
            backgroundColor: (isDark)?Colors.black : null,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: (isDark)?Colors.black : null,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volunteer_activism_outlined),
            label: 'Fundaciones',
            backgroundColor: (isDark)?Colors.black : null,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configuración',
            backgroundColor: (isDark)?Colors.black : null,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class paghome extends StatelessWidget {
  const paghome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey[200],
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
                    child: Column(
                      children: [Text("Novedades", style: TextStyle(color: Colors.black)), Text("Lorem Ipsum")],
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
    );
  }
}

class pagfun extends StatelessWidget {
  const pagfun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey[200],
      child: Column(children:[
        Container(
          margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Buscar',
            //icon: Icon(Icons.search),
            suffixIcon: Icon(Icons.search),
          ),
        )),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 10.0, left: 20.0),
          child: Text("Fundaciones en <ins ciudad>", style: TextStyle(fontSize: 15.0),),
        ),
        const Divider(
          height: 20,
          indent: 20,
          endIndent: 20,
          color: Colors.black,
        ),
        Expanded(
          child: ListView(children: [
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
                    child: Column(
                      children: [Text("News"), Text("Lorem Ipsum")],
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 100.0),
                    child: Column(
                      children: [Text("Novedade"), Text("Lorem Ipsum")],
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
        )]
      )
    );
  }
}

class pagvet extends StatelessWidget {
  const pagvet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.grey[200],
        child: Column(children:[
          Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Buscar',
                  //icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.search),
                ),
              )),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10.0, left: 20.0),
            child: Text("Veterinarios en <ins ciudad>", style: TextStyle(fontSize: 15.0),),
          ),
          const Divider(
            height: 20,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          Expanded(
            child: ListView(children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
//                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4"))),
                    Container(
                      child: Column(
                        children: [Text("Vet 1"), Text("tel. 123456789")],
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.chevron_right_outlined),
                        onPressed: () {
                          print("hola");
                        },
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
//                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4"))),
                    Container(
                      child: Column(
                        children: [Text("Vet 1"), Text("tel. 123456789")],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.chevron_right_outlined),
                      onPressed: () {
                        print("hola");
                      },
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
//                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4"))),
                    Container(
                      child: Column(
                        children: [Text("Vet 1"), Text("tel. 123456789")],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.chevron_right_outlined),
                      onPressed: () {
                        print("hola");
                      },
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
//                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4"))),
                    Container(
                      child: Column(
                        children: [Text("Vet 1"), Text("tel. 123456789")],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.chevron_right_outlined),
                      onPressed: () {
                        print("hola");
                      },
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
//                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(
                                "https://avatars.githubusercontent.com/u/34454204?v=4"))),
                    Container(
                      child: Column(
                        children: [Text("Vet 1"), Text("tel. 123456789")],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.chevron_right_outlined),
                      onPressed: () {
                        print("hola");
                      },
                    )
                  ],
                ),
              ),
            ],
            ),
          )]
        )
    );
  }
}


