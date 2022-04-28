import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawrent/home/profile/userprofile.dart';
import 'package:pawrent/adopt/adopt.dart';
import 'package:pawrent/settings/settings.dart';

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
    settingList(),
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid, provider, photoUrl="", displayName = "";

    void getCurrentUserInfo() async {
      debugPrint(auth.currentUser?.uid);
      uid=auth.currentUser!.uid;
      provider=auth.currentUser!.providerData[0].providerId.toString();

      if(provider == "password"){
        photoUrl = auth.currentUser?.photoURL?.toString()??"https://www.nintenderos.com/wp-content/uploads/2022/03/kirby-y-la-tierra-olvidada...png1-Cropped.png";
        displayName = (auth.currentUser?.displayName)??"Kirby";
      }else{
        photoUrl=auth.currentUser!.photoURL!;
        displayName=auth.currentUser!.displayName!;
      }
    }

    getCurrentUserInfo();
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        leadingWidth: 80,
//        titleTextStyle: TextStyle(
//            fontWeight: FontWeight.bold, fontSize: 18),
        title: Text(displayName),
        leading: IconButton(
          icon: CircleAvatar(
            backgroundImage: NetworkImage(
                //"https://avatars.githubusercontent.com/u/34454204?v=4"
                photoUrl,
            ),
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
                  onPressed: () {
                    debugPrint(auth.currentUser?.uid);
                    debugPrint(auth.currentUser?.photoURL);
                    debugPrint(auth.currentUser?.displayName);
                    debugPrint(auth.currentUser?.providerData[0].toString());
                    debugPrint(auth.currentUser?.providerData[0].providerId.toString());
                  },
                  icon: Icon(
                    Icons.report_problem_outlined,
                    //color: Colors.indigo,
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
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Últimos reportes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {

                  },
                  child: Text(
                    "Ver todos",
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            )
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:50,
                  height:50,
                  child: Icon(Icons.location_pin, size: 25, color: Color(0xFFEB5050)),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF2DBDB)),
                ),
                Column(
                  children:[
                    Text("Mascota reportada Bogotá"),
                    Text("Sep 18, 2020"),
                  ]
                ),
                Text("Hace 1h", style: TextStyle(color: Color(0xFFEB5050)),),
              ],
            )
          ),
          const Divider(
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width:50,
                    height:50,
                    child: Icon(Icons.location_pin, size: 25, color: Color(0xFF29AB67)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFCFEDDD)),
                  ),
                  Column(
                      children:[
                        Text("Mascota perdida - Bogotá"),
                        Text("Sep 15, 2021"),
                      ]
                  ),
                  Text("Hace 3h", style: TextStyle(color: Color(0xFF29AB67)),),
                ],
              )
          ),
          const Divider(
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width:50,
                    height:50,
                    child: Icon(Icons.location_pin, size: 25, color: Color(0xFF405AE1)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD8DCF0)),
                  ),
                  Column(
                      children:[
                        Text("Mascota encontrada Bogotá"),
                        Text("Sep 12, 2022"),
                      ]
                  ),
                  Text("Hace 2d", style: TextStyle(color: Color(0xFF405AE1)),),
                ],
              )
          ),
          const Divider(
            height: 20,
            indent: 20,
            endIndent: 20,
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
                      children: [Text("Novedades", style: TextStyle(color: Colors.black)), Text("Lorem Ipsum")],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: Image(
                          image: NetworkImage(
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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
                              "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fpets%2Fcat1.jpg?alt=media&token=13e2e16a-6487-4859-ad18-5ee429ed5f7a",
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

class pagfun extends StatefulWidget {
  const pagfun({Key? key}) : super(key: key);

  @override
  State<pagfun> createState() => _pagfunState();
}

class _pagfunState extends State<pagfun> {

  Future getData() async {
    var firestore = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestore.collection("foundations").get();

    qn.docs.forEach((element) {
      print(element.data());
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    getData();
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
            suffixIcon: Icon(Icons.search, color: (isDark) ? Colors.white : Colors.black,),
          ),
        )),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 10.0, left: 20.0),
          child: Text("Fundaciones en Bogotá", style: TextStyle(fontSize: 15.0),),
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
    MediaQueryData queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
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
                  suffixIcon: Icon(Icons.search, color:(isDark)?Colors.white:Colors.black),
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
                                "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fvets%2Fvet1.jpg?alt=media&token=5a4a461e-c863-4ce7-a359-ccd7c27481a2"))),
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
                                "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fvets%2Fvet1.jpg?alt=media&token=5a4a461e-c863-4ce7-a359-ccd7c27481a2"))),
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
                                "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fvets%2Fvet1.jpg?alt=media&token=5a4a461e-c863-4ce7-a359-ccd7c27481a2"))),
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
                                "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fvets%2Fvet1.jpg?alt=media&token=5a4a461e-c863-4ce7-a359-ccd7c27481a2"))),
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
                                "https://firebasestorage.googleapis.com/v0/b/pawpaw-9d57b.appspot.com/o/profile_assets%2Fvets%2Fvet1.jpg?alt=media&token=5a4a461e-c863-4ce7-a359-ccd7c27481a2"))),
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


