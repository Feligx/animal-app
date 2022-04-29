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
    String selctedvalue1 = "---";
    String selctedvalue2 = "---";
    String selctedvalue3 = "---";
    String selctedvalue4 = "---";
    String selctedvalue5 = "---";
    String selctedvalue6 = "---";
    String selctedvalue7 = "---";
    String selctedvalue8 = "---";
    String selctedvalue9 = "---";
    String selctedvalue10 = "---";
    String selctedvalue11 = "---";
    String selctedvalue12 = "---";
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
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue1 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Qué tipo de mascota te gusta más?"), value: "---"),
                      DropdownMenuItem(child: Text("Gatos"), value: "Canada"),
                      DropdownMenuItem(child: Text("Perros"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Conejillos de indias"), value: "England"),
                      DropdownMenuItem(child: Text("Conejos"), value: "ngland"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "Egland"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue2,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue2 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Tienes un color de preferencia?"), value: "---"),
                      DropdownMenuItem(child: Text("Negro"), value: "Canada"),
                      DropdownMenuItem(child: Text("Blanco"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Amarillo/Rubio"), value: "England"),
                      DropdownMenuItem(child: Text("Gris"), value: "Egland"),
                      DropdownMenuItem(child: Text("Beige"), value: "ngland"),
                      DropdownMenuItem(child: Text("Rojo"), value: "gland"),
                      DropdownMenuItem(child: Text("Naranja"), value: "and"),
                      DropdownMenuItem(child: Text("Cafe"), value: "Englan"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "Engl"),

                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue3,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue3 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Qué rango de edad prefieres?"), value: "---"),
                      DropdownMenuItem(child: Text("Bebé"), value: "Canada"),
                      DropdownMenuItem(child: Text("Joven"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Adulto"), value: "Englnd"),
                      DropdownMenuItem(child: Text("Mayor"), value: "Englad"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "Englan"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue4,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue4 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("Genero de preferencia"), value: "---"),
                      DropdownMenuItem(child: Text("Macho"), value: "Canada"),
                      DropdownMenuItem(child: Text("Hembra"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue5,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue5 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("Tamaño de preferencia"), value: "---"),
                      DropdownMenuItem(child: Text("Pequeño"), value: "Canada"),
                      DropdownMenuItem(child: Text("Mediano"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Grande"), value: "England"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "Canad"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue6,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue6 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Cual es tu preferencia en el pelaje?"), value: "---"),
                      DropdownMenuItem(child: Text("Corto"), value: "Canada"),
                      DropdownMenuItem(child: Text("Medio"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Largo"), value: "England"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "Canad"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue7,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue7 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Vives con niños?"), value: "---"),
                      DropdownMenuItem(child: Text("Si"), value: "Canada"),
                      DropdownMenuItem(child: Text("No"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Sapo"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue8,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue8 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Tienes gatos?"), value: "---"),
                      DropdownMenuItem(child: Text("Si"), value: "Canada"),
                      DropdownMenuItem(child: Text("No"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Sapo"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue9,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue9 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Tienes perros?"), value: "---"),
                      DropdownMenuItem(child: Text("Si"), value: "Canada"),
                      DropdownMenuItem(child: Text("No"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Sapo"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue10,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue10 = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("¿Prefieres que este esterilizado?"), value: "---"),
                      DropdownMenuItem(child: Text("Si"), value: "Canada"),
                      DropdownMenuItem(child: Text("No"), value: "Brazil"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "England"),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue11,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue11 = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem(child: Text("¿Prefieres que este vacunado?"), value: "---"),
                      DropdownMenuItem(child: Text("Si"), value: "Canada"),
                      DropdownMenuItem(child: Text("No"), value: "Brazi"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "Englan"),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue12,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue12 = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem(child: Text("Me gustaria que fuera "), value: "---"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canda"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "Engld"),
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

