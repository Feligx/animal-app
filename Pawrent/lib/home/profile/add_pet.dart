import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class AddPet extends StatefulWidget {
  const AddPet({Key? key}) : super(key: key);

  @override
  State<AddPet> createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  String photoUrl = '';

  PlatformFile? pickedFile;
  UploadTask? uploadTask;
  late String? fileName;
  late String? filePath;
  final name_field = TextEditingController();
  final age_field = TextEditingController();
  final breed_field = TextEditingController();

  CollectionReference pets = FirebaseFirestore.instance.collection('pets');

  @override
  void dispose() {
    name_field.dispose();
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

  Future uploadFile(filePath, fileName, name, age, breed) async{
    final file = File(filePath);
    final user = FirebaseAuth.instance.currentUser;

    try {
      await FirebaseStorage.instance.ref(fileName).putFile(file);
      final ref = FirebaseStorage.instance.ref(fileName);
      uploadTask = ref.putFile(file);

      final snapshot = await uploadTask!.whenComplete(() => {});
      final downloadUrl = await snapshot.ref.getDownloadURL();

      print(downloadUrl);
      print(user?.uid);

      await pets.add({
        'id_pawrent': user?.uid,
        'name': name,
        'age': age,
        'breed': breed,
        'pfp': downloadUrl,
      });

    }on FirebaseException catch(e){
      print(e.code);
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
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
        title: const Text('Añadir Mascota'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          InkWell(
              child: PetPfP(pfp: photoUrl,),
              onTap: (){
                selectFile();
              },
              borderRadius: BorderRadius.circular(70),
            splashColor: Colors.transparent,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: TextField(
              controller: name_field,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nombre',
                hintText: 'Ej: Snoopy',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child:TextField(
            controller: age_field,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Edad',
              hintText: 'Ej: 2',
            ),
            keyboardType: TextInputType.number,
            ),
          ),
          Container(margin: const EdgeInsets.only(top: 20),
          child: TextField(
            controller: breed_field,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Raza',
              hintText: 'Ej: Beagle',
            ),
          ),),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child:ElevatedButton(
              onPressed: (){
                uploadFile(filePath, 'profile_assets/pets/${fileName}', name_field.text, age_field.text, breed_field.text);
                Navigator.pop(context);
              },
              child: Text('Añadir Mascota'),
            ),
          )
        ],
      )
    );
  }
}

class PetPfP extends StatelessWidget {
  const PetPfP({Key? key, required this.pfp}) : super(key: key);
  final String pfp;
  @override
  Widget build(BuildContext context) {
    return (pfp!="")?CircleAvatar(
      backgroundImage: NetworkImage(pfp),
      radius: 70,
    ):CircleAvatar(
      backgroundColor: Color(0x76484848),
      child: Icon(
        Icons.image_search,
        size: 70,
        color: Colors.white,
      ),
      radius: 70,
    );
  }
}
