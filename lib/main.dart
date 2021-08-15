import 'package:flutter/material.dart';
import 'package:routes_textfield/home.dart';
import 'package:routes_textfield/login.dart';
import 'package:routes_textfield/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.login,
      routes:Routes.routes,
    );
  }
}
