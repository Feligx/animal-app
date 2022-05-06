import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../foundations/foundation_map.dart';

class vetProfile extends StatelessWidget {
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
        child: Column(
          children: [
            //Foto de perfil y datos
            Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: const Text('AH'),
                    radius: 70.0,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          child: Text(
                            "Elver Galarga",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Text(
                          "Cr 23A # 24C - 65, Mordor",
                        ),
                        Text(
                          "Tel: Preguntale a tu mama",
                        ),
                        Text(
                          "www.malwaregratis.com",
                        ),
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
                          child: Text(
                            "Chat Directo",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
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