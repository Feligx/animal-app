import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawrent/home/home.dart';
import 'package:pawrent/home/profile/edit_regular.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid, provider, photoUrl="", displayName = "";

    debugPrint(auth.currentUser?.uid);
    uid=auth.currentUser!.uid;
    provider=auth.currentUser!.providerData[0].providerId.toString();

    if(provider == "password"){
      photoUrl = "https://www.nintenderos.com/wp-content/uploads/2022/03/kirby-y-la-tierra-olvidada...png1-Cropped.png";
      displayName = "Kirby";
    }else{
      photoUrl=auth.currentUser!.photoURL!;
      displayName=auth.currentUser!.displayName!;
    }

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_outlined,
            //color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        //color: Colors.grey[200],
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(
                    top: 40.0, bottom: 20.0),
                    //top: 40.0, right: 40.0, left:40.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          photoUrl
                      ),
                      radius: 70.0,
                    ),
                    Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(

                              child: Text(
                                displayName,
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                ),
                            ),
                            Text(
                              "Retirando la vida :)",
                            )
                          ],
                        ))
                  ],
                )),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => editRegularUser()));
                    },
                    child: Text(
                      "Editar Perfil",
                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                    ),
                ),
              )
            ]),
            const Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Mascotas",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Añadir mascota +",
                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                      )),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Image(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/34454204?v=4",
                                      scale: 2.5))),
                          Container(
                            child: Column(
                              children: [
                                Text("Novedades"),
                                Text("Lorem Ipsum")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: IconButton(
                            icon: Icon(
                              Icons.chevron_right_outlined,
                              color: Colors.black,
                              size: 35,
                            ),
                            onPressed: () {

                            },
                          )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Image(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/34454204?v=4",
                                      scale: 2.5))),
                          Container(
                            child: Column(
                              children: [
                                Text("Novedades"),
                                Text("Lorem Ipsum")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right_outlined,
                                  color: Colors.black,
                                  size: 35,
                                ),
                                onPressed: () {

                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Image(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/34454204?v=4",
                                      scale: 2.5))),
                          Container(
                            child: Column(
                              children: [
                                Text("Novedades"),
                                Text("Lorem Ipsum")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right_outlined,
                                  color: Colors.black,
                                  size: 35,
                                ),
                                onPressed: () {

                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Image(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/34454204?v=4",
                                      scale: 2.5))),
                          Container(
                            child: Column(
                              children: [
                                Text("Novedades"),
                                Text("Lorem Ipsum")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right_outlined,
                                  color: Colors.black,
                                  size: 35,
                                ),
                                onPressed: () {

                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Image(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/34454204?v=4",
                                      scale: 2.5))),
                          Container(
                            child: Column(
                              children: [
                                Text("Novedades"),
                                Text("Lorem Ipsum")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right_outlined,
                                  color: Colors.black,
                                  size: 35,
                                ),
                                onPressed: () {

                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Image(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/34454204?v=4",
                                      scale: 2.5))),
                          Container(
                            child: Column(
                              children: [
                                Text("Novedades"),
                                Text("Lorem Ipsum")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right_outlined,
                                  color: Colors.black,
                                  size: 35,
                                ),
                                onPressed: () {

                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 20.0),
                              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                              child: Image(
                                  image: NetworkImage(
                                      "https://avatars.githubusercontent.com/u/34454204?v=4",
                                      scale: 2.5))),
                          Container(
                            child: Column(
                              children: [
                                Text("Novedades"),
                                Text("Lorem Ipsum")
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.chevron_right_outlined,
                                  color: Colors.black,
                                  size: 35,
                                ),
                                onPressed: () {

                                },
                              )),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
