import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'screens/login_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Educativo());
}

class Educativo extends StatelessWidget {

  const Educativo({super.key});

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