import 'package:flutter/material.dart';
import 'package:pawrent/adopt/adopt_match.dart';

class adoptForm extends StatefulWidget {
  const adoptForm({Key? key}) : super(key: key);

  @override
  State<adoptForm> createState() => _adoptFormState();
}

class _adoptFormState extends State<adoptForm> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;
    dynamic selctedvalue1 = 0;
    dynamic selctedvalue2 = 0;
    dynamic selctedvalue3 = 0;
    dynamic selctedvalue4 = 0;
    dynamic selctedvalue5 = 0;
    dynamic selctedvalue6 = 0;
    dynamic selctedvalue7 = 0;
    dynamic selctedvalue8 = 0;
    dynamic selctedvalue9 = 0;
    dynamic selctedvalue10 = 0;
    dynamic selctedvalue11 = 0;
    dynamic selctedvalue12 = 0;


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
      ),
        body: Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
              child:
                  Text(
                    '¿Cuál es tu tipo de mascota?',
                    style: Theme.of(context).textTheme.headline6,
                  ),
          ),
          Container(
            margin: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
            child: Text(
              'Ayúdanos llenando este formulario para poder ver cuál mascota se acopla más a ti.',
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue1,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue1 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Qué tipo de mascota te gusta más?"), value: 0),
                      DropdownMenuItem(child: Text("Gatos"), value: 1),
                      DropdownMenuItem(child: Text("Perros"), value: 2),
                      DropdownMenuItem(child: Text("Conejillos de indias"), value: 3),
                      DropdownMenuItem(child: Text("Conejos"), value: 4),
                      DropdownMenuItem(child: Text("Indiferente"), value: 5),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue2,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue2 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Tienes un color de preferencia?"), value: 0),
                      DropdownMenuItem(child: Text("Negro"), value: 1),
                      DropdownMenuItem(child: Text("Blanco"), value: 2),
                      DropdownMenuItem(child: Text("Amarillo/Rubio"), value: 3),
                      DropdownMenuItem(child: Text("Gris"), value: 4),
                      DropdownMenuItem(child: Text("Beige"), value: 5),
                      DropdownMenuItem(child: Text("Rojo"), value: 6),
                      DropdownMenuItem(child: Text("Naranja"), value: 7),
                      DropdownMenuItem(child: Text("Cafe"), value: 8),
                      DropdownMenuItem(child: Text("Indiferente"), value: 9),

                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue3,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue3 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Qué rango de edad prefieres?"), value: 0),
                      DropdownMenuItem(child: Text("Bebé"), value: 1),
                      DropdownMenuItem(child: Text("Joven"), value: 2),
                      DropdownMenuItem(child: Text("Adulto"), value: 3),
                      DropdownMenuItem(child: Text("Mayor"), value: 4),
                      DropdownMenuItem(child: Text("Indiferente"), value: 5),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue4,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue4 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("Genero de preferencia"), value: 0),
                      DropdownMenuItem(child: Text("Macho"), value: 1),
                      DropdownMenuItem(child: Text("Hembra"), value: 2),
                      DropdownMenuItem(child: Text("Indiferente"), value: 3),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue5,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue5 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("Tamaño de preferencia"), value: 0),
                      DropdownMenuItem(child: Text("Pequeño"), value: 1),
                      DropdownMenuItem(child: Text("Mediano"), value: 2),
                      DropdownMenuItem(child: Text("Grande"), value: 3),
                      DropdownMenuItem(child: Text("Indiferente"), value: 4),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue6,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue6 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Cual es tu preferencia en el pelaje?"), value: 0),
                      DropdownMenuItem(child: Text("Corto"), value: 1),
                      DropdownMenuItem(child: Text("Medio"), value: 2),
                      DropdownMenuItem(child: Text("Largo"), value: 3),
                      DropdownMenuItem(child: Text("Indiferente"), value: 4),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue7,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue7 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Vives con niños?"), value: 0),
                      DropdownMenuItem(child: Text("Si"), value: 1),
                      DropdownMenuItem(child: Text("No"), value: 2),
                      DropdownMenuItem(child: Text("Sapo"), value: 3),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue8,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue8 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Tienes gatos?"), value: 0),
                      DropdownMenuItem(child: Text("Si"), value: 1),
                      DropdownMenuItem(child: Text("No"), value: 2),
                      DropdownMenuItem(child: Text("Sapo"), value: 3),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue9,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue9 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Tienes perros?"), value: 0),
                      DropdownMenuItem(child: Text("Si"), value: 1),
                      DropdownMenuItem(child: Text("No"), value: 2),
                      DropdownMenuItem(child: Text("Sapo"), value: 3),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue10,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue10 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Prefieres que este esterilizado?"), value: 0),
                      DropdownMenuItem(child: Text("Si"), value: 1),
                      DropdownMenuItem(child: Text("No"), value: 2),
                      DropdownMenuItem(child: Text("Indiferente"), value: 3),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue11,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue11 = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem(child: Text("¿Prefieres que este vacunado?"), value: 0),
                      DropdownMenuItem(child: Text("Si"), value: 1),
                      DropdownMenuItem(child: Text("No"), value: 2),
                      DropdownMenuItem(child: Text("Indiferente"), value: 3),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue12,
                    onChanged: (dynamic? newValue) {
                      setState(() {
                        selctedvalue12 = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem(child: Text("Me gustaria que fuera "), value: 0),
                      DropdownMenuItem(child: Text("Canada"), value: 1),
                      DropdownMenuItem(child: Text("Brazil"), value: 2),
                      DropdownMenuItem(child: Text("England"), value: 3),
                    ]),
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
                      MaterialPageRoute(builder: (context) => adpotMatch()),
                    );
                  },
                  child: const Text('Continuar'),
                ),
              )
            ],
          )
          )
        ],
      ),
    ));
  }
}

