import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/screems/other/person_card.dart';

class Contenido extends StatefulWidget {
  Contenido({Key? key}) : super(key: key);

  @override
  _ContenidoState createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Contenido",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          PersonCard(),
          PersonCard(),
          PersonCard(),
          PersonCard(),
          PersonCard(),
        ],
      ),
    );
  }
}
