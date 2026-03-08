import 'package:flutter/material.dart';
import '../services/database.dart';
import '../models/student.dart';

class AdminHome extends StatefulWidget {

  @override
  _AdminHomeState createState() => _AdminHomeState();

}

class _AdminHomeState extends State<AdminHome> {

  @override
  Widget build(BuildContext context) {

    double total = Database.totalMoney();

    return Scaffold(

      appBar: AppBar(
        title: Text("Panel Administrativo"),
      ),

      body: Column(

        children: [

          Card(
            child: ListTile(
              title: Text("Total recaudado"),
              subtitle: Text("\$ $total"),
            ),
          ),

          Expanded(

            child: ListView.builder(

              itemCount: Database.students.length,

              itemBuilder:(context,index){

                Student student = Database.students[index];

                return ListTile(

                  title: Text(student.name),

                  subtitle: Text(
                    student.paid ? "Pagado" : "Pendiente"
                  ),

                  trailing: Icon(
                    student.paid
                        ? Icons.check_circle
                        : Icons.warning,
                    color: student.paid
                        ? Colors.green
                        : Colors.red,
                  ),

                );

              }

            ),

          )

        ],

      ),

    );

  }

}