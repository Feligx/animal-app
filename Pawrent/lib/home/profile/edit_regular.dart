import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class editRegularUser extends StatefulWidget {
  const editRegularUser({Key? key}) : super(key: key);

  @override
  State<editRegularUser> createState() => _editRegularUserState();
}

class _editRegularUserState extends State<editRegularUser> {
  @override
  Widget build(BuildContext context) {

    FirebaseAuth auth = FirebaseAuth.instance;
    String uid, provider, photoUrl="", displayName = "", email = "";

    void getCurrentUserInfo() async {
      debugPrint(auth.currentUser?.uid);
      debugPrint(auth.currentUser?.email.toString());
      uid=auth.currentUser!.uid;
      provider=auth.currentUser!.providerData[0].providerId.toString();
      email=auth.currentUser!.email.toString();

      if(provider == "password"){
        photoUrl = "https://www.nintenderos.com/wp-content/uploads/2022/03/kirby-y-la-tierra-olvidada...png1-Cropped.png";
        displayName = "Kirby";
      }else{
        photoUrl=auth.currentUser!.photoURL!;
        displayName=auth.currentUser!.displayName!;
      }
    }

    getCurrentUserInfo();

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
        title: Text(
          "Edit Profile",
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.save))],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
          child:
      Column(
    children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0x76484848),
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      photoUrl
                  ),
                  radius: 70.0,
                ),
              ),
              Icon(
                Icons.edit,
                color: Colors.white,
                size: 40,
              ),
            ],

          ),
            onTap: (){
              print("Edit Profile");
            },
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top:20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  displayName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child:Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                      Text(
                        "Email:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: email,
                            hintText: "Change your email",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                    ]
                    )
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                          children: [
                            Text(
                              "Phone:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "",
                                hintText: "Change your email",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),


                          ]
                      )
                  ),
                ],
              ))
            ],
          )),
      TextField(
        
      )
    ],
    ))
    );
  }
}
