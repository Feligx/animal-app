import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class editRegularUser extends StatefulWidget {
  const editRegularUser({Key? key}) : super(key: key);

  @override
  State<editRegularUser> createState() => _editRegularUserState();
}

class _editRegularUserState extends State<editRegularUser> {

  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  late String? fileName;
  late String? filePath;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future selectFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'jpeg'],
    );

    if(result != null) {
      filePath = result.files.first.path;
      fileName = result.files.first.name;

      print(filePath);
      print(fileName);

    } else {
      // User canceled the picker
    }
    //final result = await FilePicker.platform.pickFiles();
    //if (pickedFile == null) return;

    //setState(() {
      //pickedFile = result?.files.first;
    //});
  }

  Future uploadFile(filePath, fileName, uid) async{
    final file = File(filePath);

    try {
      await FirebaseStorage.instance.ref(fileName).putFile(file);
      final ref = FirebaseStorage.instance.ref(fileName);
      uploadTask = ref.putFile(file);

      final snapshot = await uploadTask!.whenComplete(() => {});
      final downloadUrl = await snapshot.ref.getDownloadURL();

      print(downloadUrl);
      print(uid);

      users.doc(uid).update({
        'profileImage': downloadUrl,
      });

    }on FirebaseException catch(e){
      print(e.code);
      print(e.message);
    }

    //final ref = FirebaseStorage.instance.ref().child(path);
    //final ref = FirebaseStorage.instance.ref(path);
    //await ref.putFile(file);

  }

  @override
  Widget build(BuildContext context) {

    FirebaseAuth auth = FirebaseAuth.instance;
    String uid="", provider, photoUrl="", displayName = "", email = "";

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
        actions: [
          IconButton(
              onPressed: (){
                //uploadFile();
                uploadFile(filePath, 'profile_assets/users/${fileName}', uid);
          }
        , icon: Icon(Icons.save))],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
          child:
      ListView(
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
              selectFile();
            },
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(top:20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.45,
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: email,
                            hintText: "Cambia tu email",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                    ]
                    )
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width*0.45,
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                          children: [
                            Text(
                              "Teléfono:",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelText: "",
                                hintText: "Cambia tu teléfono",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ]
                      )
                  ),
                ],
              )),
              Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: MediaQuery.of(context).size.width*0.8,
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text(
                   "Dirección:",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   ),
                   textAlign: TextAlign.start,
                 ),
                 TextField(
                   keyboardType: TextInputType.text,
                   decoration: InputDecoration(
                     labelText: "Dirección",
                     hintText: "Campo tu dirección",
                     hintStyle: TextStyle(
                       color: Colors.grey,
                     ),
                   ),
                 ),
               ],
              ))
            ],
          )),
    ],
    ))
    );
  }
}
