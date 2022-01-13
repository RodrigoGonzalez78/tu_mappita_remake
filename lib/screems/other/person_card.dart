import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tumappitaremake/const.dart';
import "package:url_launcher/url_launcher.dart";

class PersonCard extends StatelessWidget {
  const PersonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screemSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: screemSize.height * .25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            datos(),
            Divider(
              color: Colors.black,
            ),
            contacto()
          ],
        ),
      ),
    );
  }

  Expanded contacto() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _iconButton("assents/icons/contact/instagram.svg",
              "https://instagram.com/pupipakily?utm_medium=copy_link"),
          _iconButton("assents/icons/contact/facebook.svg",
              "https://instagram.com/pupipakily?utm_medium=copy_link"),
          _iconButton("assents/icons/contact/whatsapp.svg",
              linkWhatsapp(5493781608342)),
          _iconButton("assents/icons/sitio.svg",
              "https://maps.app.goo.gl/KS5F18NUzGenGYEaA")
        ],
      ),
    );
  }

  Expanded datos() {
    return Expanded(
      flex: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kili",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                "Maxikiosco",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(3),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(shape: BoxShape.circle),

            child: Image.network(
                "https://concepto.de/wp-content/uploads/2013/03/tipos-de-comercio-mayorista-e1593302275424.jpg",

            ),
          )
        ],
      ),
    );
  }

  Widget _iconButton(String imageSvgName, String urlString) {
    final double size = 30;
    return InkWell(
      onTap: () async {
        if (await canLaunch(urlString)) {
          await launch(urlString);
        } else {
          throw 'Could not launch $urlString';
        }
      },
      child: SvgPicture.asset(
        imageSvgName,
        width: size,
        height: size,
      ),
    );
  }
}
