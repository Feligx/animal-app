import 'package:flutter/material.dart';

class adoptForm extends StatelessWidget {
  const adoptForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Text(
            '¿Cuál es tu tipo de mascota?',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Ayúdanos llenando este formulario para poder ver cuál tipo de mascota se acopla más a ti.',
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),

        ],
      ),
    )
    );
  }
}
