import 'package:flutter/material.dart';

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
    String selctedvalue = "USA";
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
              'Ayúdanos llenando este formulario para poder ver cuál tipo de mascota se acopla más a ti.',
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
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, left:20.0, right:20.0),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: (value) => value == null ? "Select a country" : null,
                    dropdownColor: (isDark) ? Colors.black : null,
                    value: selctedvalue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selctedvalue = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem(child: Text("USA"), value: "USA"),
                      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
                      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
                      DropdownMenuItem(child: Text("England"), value: "England"),
                    ]),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(queryData.size.width, 60.0),
                        ),
                  onPressed: () {},
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
