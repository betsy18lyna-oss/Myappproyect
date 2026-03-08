import 'package:flutter/material.dart';
import 'student_home.dart';
import 'admin_home.dart';
import '../services/user_database.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {

  final email = TextEditingController();
  final password = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Gestedu"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            const SizedBox(height:40),

            const Text(
              "Bienvenido a Gestedu",
              style: TextStyle(fontSize:22),
            ),

            const SizedBox(height:30),

            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "Correo",
              ),
            ),

            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Contraseña",
              ),
            ),

            const SizedBox(height:30),

            /// BOTON LOGIN
            ElevatedButton(
              child: const Text("Iniciar Sesión"),
              onPressed: () async {

                bool ok = await UserDatabase.login(
                  email.text,
                  password.text
                );

                if(ok){

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:(context)=>AdminHome()
                    )
                  );

                }else{

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Usuario incorrecto")
                    )
                  );

                }

              },
            ),

            const SizedBox(height:10),

            /// BOTON ESTUDIANTE
            ElevatedButton(
              child: const Text("Ingresar como estudiante"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context)=>StudentHome()
                  )
                );
              },
            ),

            const SizedBox(height:10),

            /// BOTON REGISTRO
            TextButton(
              child: const Text("Crear cuenta"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context)=>RegisterScreen()
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