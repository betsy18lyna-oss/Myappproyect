import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadReceipt extends StatefulWidget {

  @override
  _UploadReceiptState createState() => _UploadReceiptState();

}

class _UploadReceiptState extends State<UploadReceipt> {

  File? image;

  Future pickImage() async {

    final picked = await ImagePicker().pickImage(
      source: ImageSource.gallery
    );

    if(picked != null){

      setState(() {
        image = File(picked.path);
      });

    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Subir comprobante"),
      ),

      body: Column(

        children: [

          SizedBox(height:20),

          image != null
          ? Image.file(image!, height:200)
          : Text("No hay imagen"),

          ElevatedButton(
            onPressed: pickImage,
            child: Text("Seleccionar comprobante"),
          ),

        ],

      ),

    );

  }

}