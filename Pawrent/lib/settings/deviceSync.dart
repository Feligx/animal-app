import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pawrent/home/foundations/foundation_map.dart';
import 'package:pawrent/settings/deviceLocation.dart';

class deviceSync extends StatefulWidget {
  const deviceSync({Key? key}) : super(key: key);

  @override
  State<deviceSync> createState() => _deviceSyncState();
}

class _deviceSyncState extends State<deviceSync> {
  late TextEditingController simController;

  void initState(){
    super.initState();
    simController = TextEditingController();
  }

  void dispose(){
    simController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Vincula tu dispositivo'),
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
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 60),
              height: queryData.size.height*0.35,
              child: Image.asset('assets/collar_img.png'),
            ),
            Text('Ingresa el número de la SIM de tu dispositivo', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            Container(
                margin: EdgeInsets.all(20),
                child: TextField(
                  controller: simController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Número SIM',
                  ),
                  keyboardType: TextInputType.phone,
                )
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: OutlinedButton(onPressed: (){
                FirebaseAuth auth = FirebaseAuth.instance;

                FirebaseFirestore.instance.collection("users").doc(auth.currentUser!.uid).update({'device':simController.text})
                    .then((value){
                    FirebaseFirestore.instance.collection("collar").doc(simController.text).get().then((value) => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MapSample(ubication: LatLng(value.data()!['Actual_position'].latitude, value.data()!['Actual_position'].longitude), type: "Mascota", date: (value.data()!['Date'] as Timestamp).toDate().toString(),)))
                    });
                  });
              }, child: Text("Vincular")),
            )
          ],
        )
      )
    );
  }
}
