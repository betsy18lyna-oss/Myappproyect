import 'package:flutter/material.dart';
import 'student_home.dart';
import 'admin_home.dart';

class LoginScreen extends StatelessWidget {

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Gestedu"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(

          children: [

            SizedBox(height:40),

            Text(
              "Bienvenido a Gestedu",
              style: TextStyle(fontSize:22),
            ),

            SizedBox(height:30),

            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Correo",
              ),
            ),

            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Contraseña",
              ),
            ),

            SizedBox(height:30),

            ElevatedButton(
              child: Text("Ingresar como estudiante"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context)=>StudentHome()
                  )
                );
              },
            ),

            ElevatedButton(
              child: Text("Ingresar como administrador"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context)=>AdminHome()
                  )
                );
              },
            ),

          ],
        ),
      ),

    );

  }

}