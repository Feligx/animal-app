import 'dart:collection';

import 'package:flutter/material.dart';

class pagadopt extends StatelessWidget {
  const pagadopt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //Container(
          //  child: Image.asset('assets/logotypexxxhdpi.png',
          //    width: queryData.size.width * 0.3,
          //  ),
          //),
          const Text('Adopta tu mascota hoy',
              maxLines: 2,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,)),
          Container(
            height: queryData.size.height*0.35,
            child: Image.asset('assets/adopt.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: (){},
                  child: Container(
                    alignment: Alignment.center,
                    width: queryData.size.width*0.3,
                      child: const Text('Adoptar')
                  )
              ),
              OutlinedButton(
                  onPressed: (){},
                  child: Container(
                      alignment: Alignment.center,
                      width: queryData.size.width*0.3,
                      child: const Text('Formulario'))),
            ],
          )
        ],
      ),
    );
  }
}
