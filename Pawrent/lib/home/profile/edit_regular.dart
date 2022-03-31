import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class editRegularUser extends StatefulWidget {
  const editRegularUser({Key? key}) : super(key: key);

  @override
  State<editRegularUser> createState() => _editRegularUserState();
}

class _editRegularUserState extends State<editRegularUser> {
  @override
  Widget build(BuildContext context) {

    FirebaseAuth auth = FirebaseAuth.instance;
    String uid, provider, photoUrl="", displayName = "";

    void getCurrentUserInfo() async {
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
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

          Container(
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
                ],
              ))
        ],
      )
    ],
    ))
    );
  }
}
