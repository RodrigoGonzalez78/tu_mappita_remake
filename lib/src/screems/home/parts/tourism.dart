import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/const.dart';
import 'my_card.dart';

class TourismSection extends StatefulWidget {
  TourismSection({Key? key}) : super(key: key);

  @override
  _TourismSectionState createState() => _TourismSectionState();
}

class _TourismSectionState extends State<TourismSection> {
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
                  routePage: placesRoute,
                  tag: "",
                  title: 'Lugares',
                ),
                MyCard(
                  buttonName: 'Alojamiento',
                  imagenLocation: "assents/icons/alojamiento.svg",
                  routePage: contendRoute,
                  tag: "",
                  title: 'Alojamiento',
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
                  routePage: eventRoute,
                  tag: "",
                  title: 'Eventos',
                ),
                MyCard(
                  buttonName: 'Información',
                  imagenLocation: "assents/icons/informacion.svg",
                  routePage: infoRoute,
                  tag: "",
                  title: 'Información',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
