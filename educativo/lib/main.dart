import 'package:educativo/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(Educativo());
}

class Educativo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gestedu",
      theme: AppTheme.theme,
      home: LoginScreen(),
    );

  }

}