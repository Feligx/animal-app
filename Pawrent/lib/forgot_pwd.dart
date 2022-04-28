import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({Key? key}) : super(key: key);

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {

  final email_field = TextEditingController();

  @override
  void dispose() {
    email_field.dispose();
    super.dispose();
  }

  Future changePwd(email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email,);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurar contraseña'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email_field,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Ingresa tu correo',
              ),
            ),
            Container(
                width: double.infinity,
                child:ElevatedButton(
                  child: Text('Verificar'),
                  onPressed: () {
                    //print(email_field.text);
                    changePwd(email_field.text);
                  },
                )
            ),
          ],
        ),
      )
    );
  }
}
