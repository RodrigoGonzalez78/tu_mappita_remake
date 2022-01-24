import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/components/cards/place_card.dart';
import 'package:tumappitaremake/src/components/internet_no_conection.dart';
import 'package:tumappitaremake/src/models/PlaceDates.dart';

class EventsScreen extends StatefulWidget {
  EventsScreen({Key? key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Eventos",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: StreamBuilder(
            //Obtine la instancia de firebase de una colecion
            stream: FirebaseFirestore.instance.collection("events").snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
              //snapshot.data!.docs.length,

              Widget widgetRetun = InternetNoConectedW();

              if (snapshot.data!.docs.length != 0) {
                widgetRetun = ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return PlaceCard(
                      placeDate: PlaceDate.fromJson(snapshot.data!.docs[index]
                          .data()! as Map<String, dynamic>),
                    );
                  },
                );
              }
              return widgetRetun;
            },
          ),
        ),
      ),
    );
  }
}
