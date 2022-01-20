import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/components/cards/general_card.dart';
import 'package:tumappitaremake/src/components/internet_no_conection.dart';
import 'package:tumappitaremake/src/models/GeneralDate.dart';
import 'package:tumappitaremake/src/models/TagModel.dart';

class GeneralContentView extends StatefulWidget {
  GeneralContentView({
    Key? key,
  }) : super(key: key);

  @override
  _GeneralContentViewState createState() => _GeneralContentViewState();
}

class _GeneralContentViewState extends State<GeneralContentView> {
  @override
  Widget build(BuildContext context) {
    TagModel? arguments =
        ModalRoute.of(context)!.settings.arguments as TagModel?;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          arguments!.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: StreamBuilder(
            //Obtine la instancia de firebase de una colecion
            stream: FirebaseFirestore.instance
                .collection(arguments.tag)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) return CircularProgressIndicator();
//snapshot.data!.docs.length,

              Widget widgetRetun = InternetNoConectedW();

              if (snapshot.data!.docs.length != 0) {
                widgetRetun = ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GeneralCard(
                        generalDate: GeneralDate.fromJson(
                            snapshot.data!.docs[index].data()! as Map));
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
