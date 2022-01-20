import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/const.dart';
import 'my_card.dart';

class ServicesSection extends StatefulWidget {
  ServicesSection({Key? key}) : super(key: key);

  @override
  _ServicesSectionState createState() => _ServicesSectionState();
}

class _ServicesSectionState extends State<ServicesSection> {
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
                  tag: "shops",
                  title: 'Comercios',
                ),
                MyCard(
                  buttonName: 'Tecnicos',
                  imagenLocation: "assents/icons/atencion.svg",
                  routePage: contendRoute,
                  tag: "technical",
                  title: 'Tecnicos',
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
