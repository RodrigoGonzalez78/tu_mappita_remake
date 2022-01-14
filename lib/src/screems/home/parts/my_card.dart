import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatefulWidget {
  final String buttonName;
  final String imagenLocation;
  final String routePage;

  MyCard(
      {required this.buttonName,
      required this.imagenLocation,
      required this.routePage});

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        _goToScreen(context, widget.routePage);
      },
      child: Container(
        height: size.height * .20,
        width: size.width * .40,
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

  void _goToScreen(BuildContext context, String routePage) {
    Navigator.of(context).pushNamed(routePage);
  }
}
