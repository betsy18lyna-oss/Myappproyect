import 'package:flutter/material.dart';
import 'student_list.dart';

class AdminHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Panel Administrativo"),
      ),

      body: Column(

        children: [

          Card(
            child: ListTile(
              title: Text("Total recaudado"),
              subtitle: Text("\$350"),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Pendientes"),
              subtitle: Text("3 estudiantes"),
            ),
          ),

          ElevatedButton(

            child: Text("Ver estudiantes"),

            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=>StudentList()
                )
              );
            },

          )

        ],

      ),

    );

  }

}