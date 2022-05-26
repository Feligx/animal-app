import 'package:flutter/material.dart';

class deviceLocation extends StatefulWidget {
  const deviceLocation({Key? key}) : super(key: key);

  @override
  State<deviceLocation> createState() => _deviceLocationState();
}

class _deviceLocationState extends State<deviceLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vincula tu dispositivo'),
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left_outlined,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(child: Text('Aqui hay un mapa de maps')),
    );
  }
}
