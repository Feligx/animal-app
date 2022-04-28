import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pawrent/themes/themes.dart';

class settingList extends StatelessWidget {
  const settingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: (){},
            child: Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
            padding: EdgeInsets.only(left: queryData.size.width*0.05, right: queryData.size.width*0.05),
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20.0),
                  child:
              Icon(
                Icons.devices_other_outlined,
                size: 40.0,
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      child: Text("Configura tus dispositivos", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    width: queryData.size.width,
                  ),
                  Container(
                      child: Text(
                    "Consulta y modifica las configuraciones de tus dispositivos emparejados.",
                    textAlign: TextAlign.left,
                  ))
                ],
              ))
            ],
          )),),
          InkWell(
            onTap: (){},
            child: Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                padding: EdgeInsets.only(left: queryData.size.width*0.05, right: queryData.size.width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 20.0),
                        child:
                        Icon(
                          Icons.devices_other_outlined,
                          size: 40.0,
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Configura tus dispositivos", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                              width: queryData.size.width,
                            ),
                            Container(
                                child: Text(
                                  "Consulta y modifica las configuraciones de tus dispositivos emparejados.",
                                  textAlign: TextAlign.left,
                                ))
                          ],
                        ))
                  ],
                )),),
          InkWell(
            onTap: (){},
            child: Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                padding: EdgeInsets.only(left: queryData.size.width*0.05, right: queryData.size.width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 20.0),
                        child:
                        Icon(
                          Icons.devices_other_outlined,
                          size: 40.0,
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Configura tus dispositivos", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                              width: queryData.size.width,
                            ),
                            Container(
                                child: Text(
                                  "Consulta y modifica las configuraciones de tus dispositivos emparejados.",
                                  textAlign: TextAlign.left,
                                ))
                          ],
                        ))
                  ],
                )),),
          InkWell(
            onTap: () async{
              final GoogleSignInAccount? googleUser = await GoogleSignIn().signOut();
              await FirebaseAuth.instance.signOut();
            },
            child: Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                padding: EdgeInsets.only(left: queryData.size.width*0.05, right: queryData.size.width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 20.0),
                        child:
                        Icon(
                          Icons.devices_other_outlined,
                          size: 40.0,
                        )),
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Log-out", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                              width: queryData.size.width,
                            ),
                            Container(
                                child: Text(
                                  "Desloguearse de la aplicación.",
                                  textAlign: TextAlign.left,
                                ))
                          ],
                        ))
                  ],
                )),),
        ],
      ),
    );
  }
}
