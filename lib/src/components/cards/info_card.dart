import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/models/InfoDate.dart';

class InfoCard extends StatefulWidget {
  InfoCard({Key? key, required InfoDate infoDate}) : super(key: key) {
    this.title = infoDate.title;
    this.description = infoDate.description;
  }

  late final String title;
  late final String description;
  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5.0,
      child: Padding(
        padding: EdgeInsets.all(6),
        child: ListTile(
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            maxLines: 3,
          ),
          subtitle: Text(
            widget.description,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
