import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../foundations/foundation_map.dart';
import 'package:url_launcher/url_launcher.dart';

class vetProfile extends StatelessWidget {

  const vetProfile({Key? key, required this.name, required this.address, required this.tel, required this.pfp}) : super(key: key);

  final String name;
  final String address;
  final int tel;
  final String pfp;

  void _launchUrl() async {
    final Uri _url = Uri.parse('https://wa.me/57'+tel.toString());
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
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
        child: ListView(
          children: [
            //Foto de perfil y datos
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: Text(name[0]),
                    radius: 70.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          margin: EdgeInsets.only(bottom: 15),
                          child: Text(
                            name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom:10),
                          width: 120,
                          child: Text(
                          address,
                          textAlign: TextAlign.center,
                        ),),
                        Container(child: Text(
                          tel.toString(),
                          textAlign: TextAlign.center,
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Divider(color: Colors.black)
            ),
            //ubicacion y chat
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MapSample(ubication: LatLng(4.6000788, -74.1433306), type: 'Vet',)));
                            },
                            child: Text(

                            "Mi Ubicación",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: TextButton(
                            child: Text("Chat Directo",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),),
                            onPressed: () {
                              _launchUrl();
                            }
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Datos
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(margin: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 25.0, right: 15.0),
                        padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Ver precios de",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Consultas y servicios",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
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
                    ),
                  ),
                  Container(margin: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 25.0, right: 15.0),
                        padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Enviar historial medico",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
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