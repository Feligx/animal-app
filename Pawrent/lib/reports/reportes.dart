import 'package:flutter/material.dart';
import 'package:pawrent/home/profile/userprofile.dart';
import '../veterinaria/foundationslist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pawrent/reports/reportes2.dart';


class reportsForm extends StatefulWidget {
  const reportsForm({Key? key}) : super(key: key);

  @override
  State<reportsForm> createState() => _reportFormState();
}

class _reportFormState extends State<reportsForm> {

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    String selctedvalue = "Selecciona";
    String selctedvalue1 = "Sexo";
    String selctedvalue2 = "Selecciona";

    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children: [
            Row(children: [
              IconButton(
                iconSize: 40.0,
                icon: const Icon(Icons.chevron_left_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
              child:
              Text(
                'Reporte de mascotas perdidas',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
              child: Text(
                'Por favor provee la mayor cantidad información para encontrar a tu mascota con más facilidad',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre",
                    labelText: "Nombre",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                 margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                 child: DropdownButtonFormField(
                     decoration: InputDecoration(hintText: "Sexo", border: OutlineInputBorder()),
                     validator: (value) => value == null ? "Selecciona el sexo" : null,
                     dropdownColor: (isDark) ? Colors.black : null,
                     value: selctedvalue1,
                     onChanged: (String? newValue) {
                       setState(() {
                        selctedvalue1 = newValue!;
                      });
                     },
                     items: [
                       DropdownMenuItem(child: Text("Sexo"), value: "Sexo"),
                       DropdownMenuItem(child: Text("Hembra"), value: "Hembra"),
                       DropdownMenuItem(child: Text("Macho"), value: "Macho"),
                     ]),
               ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Raza",
                    labelText: "Raza general",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Número de chip (si tiene)",
                    labelText: "Número de chip",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Peso",
                    labelText: "Peso (kg)",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(queryData.size.width, 60.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => reportsFormD()),
                    );
                  },
                  child: const Text('Continuar'),
                ),
              ),
            ],)
          ],
        ),

      ),

    );
  }
}
