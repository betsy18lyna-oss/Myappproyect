import 'package:flutter/material.dart';
import 'upload_receipt.dart';

class StudentHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Panel Estudiante"),
      ),

      body: ListView(

        children: [

          Card(
            child: ListTile(
              title: Text("Cuota Fiesta Escolar"),
              subtitle: Text("Estado: Pendiente"),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Cuota Materiales"),
              subtitle: Text("Estado: Pagado"),
            ),
          ),

          SizedBox(height:20),

          ElevatedButton(

            child: Text("Subir comprobante"),

            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=>UploadReceipt()
                )
              );
            },

          )

        ],

      ),

    );

  }

}