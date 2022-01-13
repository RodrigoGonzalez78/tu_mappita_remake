import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/const.dart';
import 'my_card.dart';

class Servicios extends StatefulWidget {
  Servicios({Key? key}) : super(key: key);

  @override
  _ServiciosState createState() => _ServiciosState();
}

class _ServiciosState extends State<Servicios> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Servicios",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 7,
              width: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyCard(
                  buttonName: 'Comercios',
                  imagenLocation: "assents/icons/tienda.svg",
                  routePage: contendRoute,
                ),
                MyCard(
                  buttonName: 'Servicios',
                  imagenLocation: "assents/icons/atencion.svg",
                  routePage: "",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
