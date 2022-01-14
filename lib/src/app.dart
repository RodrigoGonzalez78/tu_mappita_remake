import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/const.dart';
import 'package:tumappitaremake/src/screems/home/home.dart';
import 'package:tumappitaremake/src/screems/general_content/general_content_view.dart';

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
        contendRoute: (BuildContext constext) => GeneralContentView()
      },
    );
  }
}
