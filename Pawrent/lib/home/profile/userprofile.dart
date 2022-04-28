import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawrent/home/profile/edit_regular.dart';
import 'package:pawrent/home/profile/pet_profile.dart';

import 'add_pet.dart';

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
      photoUrl = auth.currentUser?.photoURL?.toString()??"https://www.nintenderos.com/wp-content/uploads/2022/03/kirby-y-la-tierra-olvidada...png1-Cropped.png";
      displayName = (auth.currentUser?.displayName)??"Kirby";
    }else{
      photoUrl=auth.currentUser!.photoURL!;
      displayName=auth.currentUser!.displayName!;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_outlined,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
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
                              //"Retirando la vida :)",
                              "Minando ando ;)"
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddPet()));
                      },
                      child: Text(
                        "Añadir mascota +",
                        style: TextStyle(color: Colors.black, fontSize: 13.0),
                      )),
                )
              ],
            ),
            Expanded(
              child: petList(),
            ),
          ],
        ),
      ),

    );
  }
}

class petList extends StatefulWidget {
  const petList({Key? key}) : super(key: key);

  @override
  State<petList> createState() => _petListState();
}

class _petListState extends State<petList> {
  List<Widget> pets = [];
  FirebaseAuth auth = FirebaseAuth.instance;
  bool _query = true;

  Future getPets() async{
    final response = await FirebaseFirestore.instance.collection('pets').where('id_pawrent', isEqualTo: auth.currentUser?.uid).get().then((value) => {
      value.docs.forEach((element) {
        debugPrint(element.data()['name']);
        setState(() {
          _query = false;
          var mediaQuery=MediaQuery.of(context);
          pets.add(Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            //padding: EdgeInsets.all(10.0),
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      //margin: EdgeInsets.only(left: 20.0),
                    padding: EdgeInsets.all(10.0),
                      height: mediaQuery.size.height * 0.2,
                      width: mediaQuery.size.width * 0.4,
                      child: Image(
                        fit: BoxFit.fill,
                          image: NetworkImage(
                              element.data()['pfp'],
                              //scale: 2.5
                          ))),
                  Row(
                    children: [
                      Container(
                      child: Column(
                        children: [
                          Text(element.data()['name']),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PetProfile(pet_id: "1")));
                            },
                          )),
                    ],
                  )
                ],
              ),
            ),
          ));
        });
      })
    });

  }

  @override
  Widget build(BuildContext context) {
    if(_query)getPets();
    return ListView(
        children: pets.isNotEmpty?pets:[Center(child: CircularProgressIndicator())],
    );
  }
}
