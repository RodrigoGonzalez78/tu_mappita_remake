import 'package:flutter/material.dart';
import 'my_card.dart';

class Turismo extends StatefulWidget {
  Turismo({Key? key}) : super(key: key);

  @override
  _TurismoState createState() => _TurismoState();
}

class _TurismoState extends State<Turismo> {
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
              "Turismo",
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
                  buttonName: 'Lugares',
                  imagenLocation: "assents/icons/sitio.svg",
                  routePage: "",
                ),
                MyCard(
                  buttonName: 'Alojamiento',
                  imagenLocation: "assents/icons/alojamiento.svg",
                  routePage: "",
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyCard(
                  buttonName: 'Eventos',
                  imagenLocation: "assents/icons/evento.svg",
                  routePage: "",
                ),
                MyCard(
                  buttonName: 'Informacion',
                  imagenLocation: "assents/icons/informacion.svg",
                  routePage: "",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
