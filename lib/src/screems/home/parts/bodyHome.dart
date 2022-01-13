import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/screems/home/parts/servicios.dart';
import 'package:tumappitaremake/src/screems/home/parts/servicios_basicos.dart';
import 'package:tumappitaremake/src/screems/home/parts/turismo.dart';

class BodyHome extends StatefulWidget {
  BodyHome({Key? key}) : super(key: key);

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Turismo(),
          Servicios(),
          ServiciosBasicos(),
        ],
      ),
    );
  }
}
