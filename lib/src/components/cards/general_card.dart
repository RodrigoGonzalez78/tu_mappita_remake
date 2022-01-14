import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tumappitaremake/src/const.dart';
import "package:url_launcher/url_launcher.dart";

class GeneralCard extends StatelessWidget {
  const GeneralCard(
      {Key? key,
      required this.name,
      required this.phoneNumber,
      required this.description,
      required this.imageLink,
      required this.instagramLink,
      required this.facebookLink,
      required this.mapsLink})
      : super(key: key);
  final String name;
  //El numero tiene que contener la caracteristicas
  final int phoneNumber;
  final String description;
  final String imageLink;
  final String instagramLink;
  final String facebookLink;
  final String mapsLink;

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
            _descriptiveDates(),
            Divider(
              color: Colors.black,
            ),
            _contactDates()
          ],
        ),
      ),
    );
  }

  Expanded _contactDates() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _iconButton("assents/icons/contact/instagram.svg", instagramLink),
          _iconButton("assents/icons/contact/facebook.svg", facebookLink),
          _iconButton(
              "assents/icons/contact/whatsapp.svg", linkWhatsapp(phoneNumber)),
          _iconButton("assents/icons/sitio.svg", mapsLink)
        ],
      ),
    );
  }

  Expanded _descriptiveDates() {
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
                name,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
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
              imageLink,
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
