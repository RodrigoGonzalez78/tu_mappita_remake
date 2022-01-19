import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/screems/home/parts/services.dart';
import 'package:tumappitaremake/src/screems/home/parts/basic_services.dart';
import 'package:tumappitaremake/src/screems/home/parts/tourism.dart';

class BodyHome extends StatefulWidget {
  BodyHome({Key? key}) : super(key: key);

  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TourismSection(),
          ServicesSection(),
          BasicServicesSection(),
          Container(
            height: 30,
          )
        ],
      ),
    );
  }
}
