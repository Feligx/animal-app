import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class PetProfile extends StatefulWidget {
  const PetProfile({Key? key, required this.pet_id}) : super(key: key);
  final String pet_id;


  @override
  State<PetProfile> createState() => _PetProfileState();
}

class _PetProfileState extends State<PetProfile> {
  @override
  var _editProfile = false;
  var _query=false;

  String photo_url = "";
  Map<String, dynamic> pet={};
  String age = "";
  String breed = "";

  Future getPetProfile(pet_id) async {
    CollectionReference users = FirebaseFirestore.instance.collection('pets');
    final response = await users.doc(pet_id).get();
    setState(() {
      _query=true;
      pet = response.data() as Map<String, dynamic>;
      print(pet);
      photo_url = pet['pfp'];
    });
    print(pet.runtimeType.toString());
    print(pet['breed']);
    //photo_url = pet['pfp'];
    //print(pet?.data());
    print(photo_url);
  }

  final List<Item> items = [Item(expandedValue: 'Aquí iria la historia clínica',headerValue: 'Historia Clínica'),Item(expandedValue: 'Aqui van los habitos',headerValue: 'Hábitos')];
  CircleAvatar nonEditablePhoto(String photoUrl) {
    final avatarWithPhoto = CircleAvatar(
      radius: 70.0,
      backgroundColor: Color(0x76484848),
      backgroundImage: NetworkImage(photoUrl),
    );
    final avatarWithoutPhoto = CircleAvatar(
      radius: 70.0,
      backgroundColor: Color(0x76484848),
      child: Icon(
        Icons.pets,
        color: Colors.white,
        size: 50,
      ),
    );
    return (photoUrl != "") ? avatarWithPhoto : avatarWithoutPhoto;
  }
  Container characteristicField(mediaQuery, label, type) {
    print(type);
    return Container(
        width: mediaQuery.size.width * 0.3,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: label,
          ),
          keyboardType: (type=='text')?TextInputType.text:TextInputType.number,
          controller: (type=='text')?breed_field:age_field,
        )
    );
  }

  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  late String? fileName;
  late String? filePath;
  final age_field = TextEditingController();
  final breed_field = TextEditingController();


  @override
  void dispose() {
    age_field.dispose();
    breed_field.dispose();
    super.dispose();
  }

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

  }

  Future uploadFile(filePath, fileName, pet_id, age, breed) async{
    final file = File(filePath);
    final pet_ref = FirebaseFirestore.instance.collection('pets').doc(pet_id);

    try {
      await FirebaseStorage.instance.ref(fileName).putFile(file);
      final ref = FirebaseStorage.instance.ref(fileName);
      uploadTask = ref.putFile(file);

      final snapshot = await uploadTask!.whenComplete(() => {});
      final downloadUrl = await snapshot.ref.getDownloadURL();

      print(downloadUrl);

      pet_ref.update({
        'pfp': downloadUrl,
      });

      await FirebaseFirestore.instance.collection('pets').doc(pet_id).update({
        'age': age,
        'breed': breed,
      });

      getPetProfile(widget.pet_id);

    }on FirebaseException catch(e){
      print(e.code);
      print(e.message);
    }
  }

  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    if(!_query)getPetProfile(widget.pet_id);
    return Scaffold(
      appBar: AppBar(
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
        title: Text('Perfil de Mascota'),
      ),
      body: (!pet.isEmpty)?ListView(
          children:[
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _editProfile?InkWell(
                      child:CircleAvatar(
                        radius: 70.0,
                        backgroundColor: Color(0x76484848),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      onTap: (){
                        print('Editar foto');
                        selectFile();
                      },

                    ):nonEditablePhoto(photo_url),
                    Text(pet['name']??'',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ]
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Información General' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if(_editProfile && age_field.text != "" && breed_field.text != ""){
                          uploadFile(filePath, 'profile_assets/pets/${fileName}', widget.pet_id, age_field.text, breed_field.text);
                        }
                        _editProfile = !_editProfile;
                        _query=false;
                      });
                    },
                    child: Text(
                      "Editar Perfil",
                      style: TextStyle(color: Colors.black, fontSize: 13.0),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text('Edad: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  _editProfile?characteristicField(mediaQueryData, 'Edad', 'number'):Text(pet['age'].toString()+' años'??'',style: TextStyle(fontSize: 15),),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text('Raza: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  _editProfile?characteristicField(mediaQueryData, 'Raza', 'text'):Text(pet['breed']??'',style: TextStyle(fontSize: 15),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child:ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    items[index].isExpanded = !isExpanded;
                  });
                },
                children: items.map<ExpansionPanel>((Item item) {
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(item.headerValue),
                      );
                    },
                    body: ListTile(
                      title: Text(item.expandedValue),
                    ),
                    isExpanded: item.isExpanded,
                  );
                }).toList(),
              ),)
          ]
      ):Center(child: CircularProgressIndicator())

    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}