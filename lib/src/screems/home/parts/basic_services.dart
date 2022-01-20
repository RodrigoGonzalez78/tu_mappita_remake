import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/const.dart';
import 'my_card.dart';

class BasicServicesSection extends StatefulWidget {
  BasicServicesSection({Key? key}) : super(key: key);

  @override
  _BasicServicesSectionState createState() => _BasicServicesSectionState();
}

class _BasicServicesSectionState extends State<BasicServicesSection> {
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
              "Servicios Basicos",
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
                  buttonName: 'Finanzas',
                  imagenLocation: "assents/icons/banco.svg",
                  routePage: contendRoute,
                  title: "Finanzas",
                  tag: "finance",
                ),
                MyCard(
                  buttonName: 'Salud',
                  imagenLocation: "assents/icons/salud.svg",
                  routePage: contendRoute,
                  title: "Salud",
                  tag: "health",
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
                  buttonName: 'Educación',
                  imagenLocation: "assents/icons/birrete.svg",
                  routePage: contendRoute,
                  title: "Educación",
                  tag: "education",
                ),
                MyCard(
                  buttonName: 'Seguridad',
                  imagenLocation: "assents/icons/policia.svg",
                  routePage: contendRoute,
                  title: "Seguridad",
                  tag: "security",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
