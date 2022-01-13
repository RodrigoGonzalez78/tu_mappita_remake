import 'package:flutter/material.dart';
import 'package:tumappitaremake/const.dart';
import 'package:tumappitaremake/screems/home/home.dart';
import 'package:tumappitaremake/screems/other/contend.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tu Mappita Remake',
      theme: ThemeData(
        fontFamily: "Oswald-Regular",
        primarySwatch: Colors.blue,
      ),
      initialRoute: homeRoute,
      routes: {
        homeRoute: (BuildContext context) => const Home(),
        contendRoute: (BuildContext constext) => Contenido()
      },
    );
  }
}
