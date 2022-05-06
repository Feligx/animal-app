import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'foundation_map.dart';

class foundDetailed extends StatefulWidget {
  const foundDetailed({Key? key, required this.id}) : super(key: key);
  final String id;

  @override
  State<foundDetailed> createState() => _foundDetailedState();
}

class _foundDetailedState extends State<foundDetailed> {

  var foundationName="", foundationAddress="", foundationPhone="", foundationImage="";
  bool queried = false;
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  Future getFoundation() async{
    if(!queried){
      final response = await FirebaseFirestore.instance.collection('foundations').doc(widget.id).get();
      final value = response.data();
      print("response: "+value.toString());
      setState(() {
        foundationName = value!['name'];
        foundationAddress = value['address'];
        foundationPhone = value['tel'];
        foundationImage = value['pfp'];
        queried = true;
        print(foundationName + foundationAddress + foundationPhone + foundationImage);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    print(widget.id);
    getFoundation();
    return Scaffold(
      appBar: AppBar(
        title: Text('Foundation Details'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 20, bottom: 40),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(foundationImage),
                    ),
                    Column(
                      children: <Widget>[
                        Text(foundationName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),),
                        Text("Tel: "+foundationPhone),
                      ],
                    ),
                  ]
                )
            ),
            const Divider(
              height: 20,
              indent: 20,
              endIndent: 20,
              color: Colors.black,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20),
              child: Text("Ubicación", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            InkWell(
              child: Card(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                          child: Icon(Icons.location_on, color: Colors.orange,),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Ver ubicación",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapSample(ubication: LatLng(4.6000788, -74.1433306), type: "foundation",)),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}