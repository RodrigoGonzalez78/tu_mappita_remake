import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tumappitaremake/src/screems/home/parts/body_home.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _myList = [BodyHome()];

  @override
  void initState() {
    super.initState();

    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _sliverAppBar(),
          SliverList(
            //Permite mostrar una lista sin problemas de scrooll
            delegate: SliverChildListDelegate(
              _myList,
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _sliverAppBar() {
    //Encabesado
    return SliverAppBar(
      elevation: 10,
      pinned: false,
      snap: false,
      floating: false,
      backgroundColor: Colors.transparent,
      expandedHeight: 250.0,
      flexibleSpace: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.0),
          borderRadius: BorderRadius.vertical(
            top: Radius.zero,
            bottom: Radius.circular(25),
          ),
        ),
        child: FlexibleSpaceBar(
          titlePadding: EdgeInsets.only(
            left: 5,
            bottom: 15,
          ),
          centerTitle: true,
          collapseMode: CollapseMode.pin,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bienvenido a",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                "Tu Mappita",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Todo lo que nesesitas en un solo lugar.              ",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          background: Image.asset(
            "assents/images/fondo.jpg",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
