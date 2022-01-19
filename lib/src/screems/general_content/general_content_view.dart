import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/components/cards/general_card.dart';
import 'package:tumappitaremake/src/models/GeneralDate.dart';
import 'package:tumappitaremake/src/models/TagModel.dart';

final dateEjepl = GeneralDate(
    name: "Maxikiosko Kili",
    phoneNumber: 543794407878,
    description:
        "Esta es una descripcion de ejempplo con informacion relevante",
    imageLink:
        "https://concepto.de/wp-content/uploads/2013/03/tipos-de-comercio-mayorista-e1593302275424.jpg",
    instagramLink: "https://instagram.com/pupipakily?utm_medium=copy_link",
    facebookLink: "https://www.facebook.com/pinchypacheco/",
    mapsLink: "https://goo.gl/maps/4Ncf5FGKGUpLEijE6");

Widget cardEjmpl = GeneralCard(
  generalDate: dateEjepl,
);

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
    TagModel? arguments =
        ModalRoute.of(context)!.settings.arguments as TagModel?;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          arguments!.title,
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
