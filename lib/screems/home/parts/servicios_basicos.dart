import 'package:flutter/material.dart';
import 'my_card.dart';

class ServiciosBasicos extends StatefulWidget {
  ServiciosBasicos({Key? key}) : super(key: key);

  @override
  _ServiciosBasicosState createState() => _ServiciosBasicosState();
}

class _ServiciosBasicosState extends State<ServiciosBasicos> {
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
                  routePage: "",
                ),
                MyCard(
                  buttonName: 'Salud',
                  imagenLocation: "assents/icons/salud.svg",
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
                  buttonName: 'Educacion',
                  imagenLocation: "assents/icons/birrete.svg",
                  routePage: "",
                ),
                MyCard(
                  buttonName: 'Seguridad',
                  imagenLocation: "assents/icons/policia.svg",
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
