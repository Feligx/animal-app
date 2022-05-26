import 'package:flutter/material.dart';
import 'package:pawrent/home/home1.dart';
import '../veterinaria/foundationslist.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pawrent/reports/reportes.dart';


class reportsFormT extends StatefulWidget {
  const reportsFormT({Key? key}) : super(key: key);

  @override
  State<reportsFormT> createState() => _reportFormStateT();
}

class _reportFormStateT extends State<reportsFormT> {

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
                'Esta sección incluye la información de contacto en caso de encontrar a tu mascota y la última vez que esta fue vista',
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ),
            Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: Text(
                  'Última vez que se vio a la mascota',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.left,
                ),
              ),
              Text("${selectedDate.toLocal()}".split(' ')[0]),
              SizedBox(height: 20.0, width: 120.0),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Fecha de pérdida de la mascota'),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ciudad",
                    labelText: "Ciudad",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Dirección aproximada",
                    labelText: "Dirección aproximada",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Comentarios del lugar",
                    labelText: "Comentarios adicionales del lugar",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: Text(
                  'Información de contacto',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nombre",
                    labelText: "Nombre completo",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Télefono",
                    labelText: "Teléfono",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Título del reporte",
                    labelText: "Título del reporte",
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
                      MaterialPageRoute(builder: (context) => Home1()),
                    );
                  },
                  child: const Text('Finalizar'),
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
