import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {

  final students = [

    {"name":"Juan Perez","status":"Pendiente"},
    {"name":"Maria Lopez","status":"Pagado"},
    {"name":"Carlos Ruiz","status":"Pendiente"}

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Estudiantes"),
      ),

      body: ListView.builder(

        itemCount: students.length,

        itemBuilder:(context,index){

          return ListTile(

            title: Text(students[index]["name"]!),

            subtitle: Text(students[index]["status"]!),

            trailing: Icon(Icons.edit),

          );

        }

      ),

    );

  }

}