import 'package:app_fisica/assunto/assuntoPage.dart';
import 'package:app_fisica/home/homePage.dart';
import 'package:app_fisica/modulo/moduloPage.dart';
import 'package:app_fisica/video/videoPage.dart';
import 'package:flutter/material.dart';

import 'login/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Física',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: {
        '/home': (context) => HomePage(),
        '/modulo': (context) => ModuloPage(),
        '/assunto': (context) => AssuntoPage(),
        '/video': (context) => VideoPage(),
      },
    );
  }
}
