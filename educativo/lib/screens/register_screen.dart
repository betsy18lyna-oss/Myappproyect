import 'package:flutter/material.dart';
import '../services/user_database.dart';

class RegisterScreen extends StatelessWidget {

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Registro"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Correo"
              ),
            ),

            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Contraseña"
              ),
            ),

            SizedBox(height:20),

            ElevatedButton(

              child: Text("Crear cuenta"),

              onPressed: () async {

                await UserDatabase.insertUser(
                  email.text,
                  password.text
                );

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Cuenta creada"))
                );

                Navigator.pop(context);

              },

            )

          ],

        ),
      ),

    );

  }

}