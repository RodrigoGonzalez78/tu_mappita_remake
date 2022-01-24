import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tumappitaremake/src/models/PlaceDates.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaceCard extends StatefulWidget {
  PlaceCard({required PlaceDate placeDate}) {
    this.title = placeDate.title;
    this.description = placeDate.description;
    this.imageLink = placeDate.imageLink;
    this.mapsLink = placeDate.mapsLink;
  }

  late final String title;
  late final String description;
  late final String mapsLink;
  late final String imageLink;
  @override
  _PlaceCardState createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5.0,
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
                widget.title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                maxLines: 3,
              ),
              subtitle: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              trailing: InkWell(
                onTap: () async {
                  if (await canLaunch(widget.mapsLink)) {
                    await launch(widget.mapsLink);
                  } else {
                    throw 'Could not launch ${widget.mapsLink}';
                  }
                },
                child: SvgPicture.asset(
                  "assents/icons/sitio.svg",
                  width: 35,
                  height: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
