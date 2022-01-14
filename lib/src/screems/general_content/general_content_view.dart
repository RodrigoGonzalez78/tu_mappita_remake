import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/components/cards/general_card.dart';
import 'package:tumappitaremake/src/models/GeneralDate.dart';

final dateEjepl = GeneralDate(
    name: "Kili",
    phoneNumber: 5493781608342,
    description: "Maxikiosco",
    imageLink:
        "https://concepto.de/wp-content/uploads/2013/03/tipos-de-comercio-mayorista-e1593302275424.jpg",
    instagramLink: "https://instagram.com/pupipakily?utm_medium=copy_link",
    facebookLink: "https://www.facebook.com/pinchypacheco/",
    mapsLink: "https://maps.app.goo.gl/KS5F18NUzGenGYEaA");

Widget cardEjmpl = GeneralCard(
    name: dateEjepl.name,
    phoneNumber: dateEjepl.phoneNumber,
    description: dateEjepl.description,
    imageLink: dateEjepl.imageLink,
    instagramLink: dateEjepl.instagramLink,
    facebookLink: dateEjepl.facebookLink,
    mapsLink: dateEjepl.mapsLink);

class GeneralContentView extends StatefulWidget {
  GeneralContentView({
    Key? key,
  }) : super(key: key);

  @override
  _GeneralContentViewState createState() => _GeneralContentViewState();
}

class _GeneralContentViewState extends State<GeneralContentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Nombre",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        children: [cardEjmpl, cardEjmpl, cardEjmpl, cardEjmpl],
      ),
    );
  }
}
