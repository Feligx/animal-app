import 'package:flutter/material.dart';
import 'package:pawrent/adopt/adopt_match.dart';

class adoptForm extends StatefulWidget {
  const adoptForm({Key? key}) : super(key: key);

  @override
  State<adoptForm> createState() => _adoptFormState();
}

class _adoptFormState extends State<adoptForm> {
  dynamic selctedvalue1 = 0;
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

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    bool isDark = queryData.platformBrightness == Brightness.dark;

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
                      DropdownMenuItem(child: Text("Gatos"), value: "Cat"),
                      DropdownMenuItem(child: Text("Perros"), value: "Dog"),
                      DropdownMenuItem(child: Text("Conejillos de indias"), value: "Guinea Pig"),
                      DropdownMenuItem(child: Text("Conejos"), value: "Rabbit"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "all"),
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
                      DropdownMenuItem(child: Text("Bebé"), value: "Baby"),
                      DropdownMenuItem(child: Text("Joven"), value: "Young"),
                      DropdownMenuItem(child: Text("Adulto"), value: "Adult"),
                      DropdownMenuItem(child: Text("Mayor"), value: "Senior"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "all"),
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
                      DropdownMenuItem(child: Text("Género de preferencia"), value: 0),
                      DropdownMenuItem(child: Text("Macho"), value: "Male"),
                      DropdownMenuItem(child: Text("Hembra"), value: "Female"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "all"),
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
                      DropdownMenuItem(child: Text("Pequeño"), value: "Small"),
                      DropdownMenuItem(child: Text("Mediano"), value: "Medium"),
                      DropdownMenuItem(child: Text("Grande"), value: "Large"),
                      DropdownMenuItem(child: Text("Muy Grande"), value: "Extra Large"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "all"),
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
                      DropdownMenuItem(child: Text("Corto"), value: "Short"),
                      DropdownMenuItem(child: Text("Medio"), value: "Medium"),
                      DropdownMenuItem(child: Text("Largo"), value: "Long"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "all"),
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
                      DropdownMenuItem(child: Text("Si"), value: "true"),
                      DropdownMenuItem(child: Text("No"), value: "false"),
                      DropdownMenuItem(child: Text("Sapo"), value: "all"),
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
                      DropdownMenuItem(child: Text("Si"), value: "true"),
                      DropdownMenuItem(child: Text("No"), value: "false"),
                      DropdownMenuItem(child: Text("Sapo"), value: "all"),
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
                      DropdownMenuItem(child: Text("Si"), value: "true"),
                      DropdownMenuItem(child: Text("No"), value: "false"),
                      DropdownMenuItem(child: Text("Sapo"), value: "all"),
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
                      DropdownMenuItem(child: Text("Si"), value: "true"),
                      DropdownMenuItem(child: Text("No"), value: "false"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "all"),
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
                      DropdownMenuItem(child: Text("Si"), value: "true"),
                      DropdownMenuItem(child: Text("No"), value: "false"),
                      DropdownMenuItem(child: Text("Indiferente"), value: "all"),
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
                        print("Before:"+ selctedvalue12.toString());
                        selctedvalue12 = newValue!;
                        print(selctedvalue12);
                      });
                    },
                    items: const [
                      DropdownMenuItem(child: Text("Me gustaria entrenado en casa: "), value: 0),
                      DropdownMenuItem(child: Text("Sí"), value: "true"),
                      DropdownMenuItem(child: Text("No"), value: "false"),
                      DropdownMenuItem(child: Text("Sapo"), value: "all"),
                    ]),
              ),

              Container(
                margin: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(queryData.size.width, 60.0),
                        ),
                  onPressed: () {
                    var variables = [selctedvalue1, selctedvalue3, selctedvalue4, selctedvalue5, selctedvalue6, selctedvalue7, selctedvalue8, selctedvalue9, selctedvalue10, selctedvalue11, selctedvalue12];
                    if (!variables.contains(0)) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => adpotMatch(
                          filter: {
                            "species": selctedvalue1,
                            "age": selctedvalue3,
                            "gender": selctedvalue4,
                            "size": selctedvalue5,
                            "coat": selctedvalue6,
                            "attributes": {
                              "sterilized": selctedvalue10,
                              "house_trained": selctedvalue12,
                              "shots_current": selctedvalue11,
                            },
                            "environment": {
                              "children": selctedvalue7,
                              "dogs": selctedvalue9,
                              "cats": selctedvalue8,
                            },
                          },
                        )),
                      );
                    }else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Formulario Incompleto"),
                            content: Text("Responda todas las preguntas"),
                            actions: [
                              ElevatedButton(
                                child: Text("Ok"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                            ],
                        );
                        },
                      );
                      }
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

