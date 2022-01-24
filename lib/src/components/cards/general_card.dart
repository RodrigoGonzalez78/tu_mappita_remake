import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tumappitaremake/src/const.dart';
import 'package:tumappitaremake/src/models/GeneralDate.dart';
import "package:url_launcher/url_launcher.dart";

class GeneralCard extends StatefulWidget {
  GeneralCard({required GeneralDate generalDate}) {
    this.name = generalDate.name;
    this.description = generalDate.description;
    this.facebookLink = generalDate.facebookLink;
    this.imageLink = generalDate.imageLink;
    this.mapsLink = generalDate.mapsLink;
    this.phoneNumber = generalDate.phoneNumber;
    this.instagramLink = generalDate.instagramLink;
  }

  late String name;
  //El numero tiene que contener la caracteristicas
  late int phoneNumber;
  late String description;
  late String imageLink;
  late String instagramLink;
  late String facebookLink;
  late String mapsLink;

  @override
  _GeneralCardState createState() => _GeneralCardState();
}

class _GeneralCardState extends State<GeneralCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 6.0,
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              height: 200.0,
              child: Ink.image(
                image: NetworkImage(widget.imageLink),
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            ListTile(
              title: Text(
                widget.name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                maxLines: 3,
              ),
              subtitle: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            _contactDates(),
          ],
        ),
      ),
    );
  }

  Widget _contactDates() {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _iconButton(
              "assents/icons/contact/instagram2.svg", widget.instagramLink),
          _iconButton(
              "assents/icons/contact/facebook2.svg", widget.facebookLink),
          _iconButton("assents/icons/contact/whatsapp2.svg",
              linkWhatsapp(widget.phoneNumber)),
          _iconButton("assents/icons/contact/maps2.svg", widget.mapsLink)
        ],
      ),
    );
  }

  Widget _iconButton(String imageSvgName, String urlString) {
    final double size = 35;
    Color iconColor = Colors.black;

    if (urlString == "") {
      iconColor = Colors.red;
    }

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
        color: iconColor,
      ),
    );
  }
}
