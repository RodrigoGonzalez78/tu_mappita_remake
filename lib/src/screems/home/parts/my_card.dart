import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tumappitaremake/src/models/TagModel.dart';

class MyCard extends StatefulWidget {
  final String buttonName;
  final String imagenLocation;
  final String routePage;
  final String tag;
  final String title;

  MyCard(
      {required this.buttonName,
      required this.imagenLocation,
      required this.routePage,
      required this.tag,
      required this.title});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        _goToScreen(context, widget.routePage,
            TagModel(tag: widget.tag, title: widget.title));
      },
      child: Container(
        height: size.height * .18,
        width: size.width * .38,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.imagenLocation,
              width: 60,
              height: 60,
            ),
            Text(
              widget.buttonName,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _goToScreen(BuildContext context, String routePage, TagModel tag) {
    Navigator.of(context).pushNamed(routePage, arguments: tag);
  }
}
