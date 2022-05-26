import 'package:flutter/material.dart';
import 'package:pawrent/home/profile/userprofile.dart';
import '../veterinaria/foundationslist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pawrent/reports/reportes3.dart';


class reportsFormD extends StatefulWidget {
  const reportsFormD({Key? key}) : super(key: key);

  @override
  State<reportsFormD> createState() => _reportFormStateD();
}

class _reportFormStateD extends State<reportsFormD> {

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;

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
              Text("${selectedDate.toLocal()}".split(' ')[0]),
              SizedBox(height: 20.0, width: 120.0),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Fecha de Nacimiento'),
            ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Descripción física",
                    labelText: "Descripción física",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: "Información médica, y patrones de comportamiento",
                    labelText: "Información médica, y patrones de comportamiento",
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
                      MaterialPageRoute(builder: (context) => reportsFormT()),
                    );
                  },
                  child: const Text('Continuar'),
                ),
              ),
            ]
            ),

          ],

        ),
      ),
    );
  }
}
