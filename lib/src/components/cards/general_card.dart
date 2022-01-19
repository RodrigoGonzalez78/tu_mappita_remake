import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tumappitaremake/src/const.dart';
import 'package:tumappitaremake/src/models/GeneralDate.dart';
import "package:url_launcher/url_launcher.dart";

class GeneralCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final Size screemSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: screemSize.height * .40,
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
            _descriptiveDates(context),
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

  Expanded _descriptiveDates(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      flex: 2,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * .5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(name,
                    maxLines: 2,
                    maxFontSize: 30,
                    minFontSize: 15,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                AutoSizeText(
                  description,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 10,
                  maxLines: 4,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: size.width * .35,
            margin: EdgeInsets.all(3),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.network(
              imageLink,
              fit: BoxFit.cover,
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
