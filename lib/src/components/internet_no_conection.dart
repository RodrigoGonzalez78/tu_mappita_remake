import 'package:flutter/material.dart';

class InternetNoConectedW extends StatelessWidget {
  const InternetNoConectedW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assents/images/pescar.png",
            width: 200,
            height: 200,
          ),
          Text(
            "No se obtubo respuesta del servidor!",
            style: TextStyle(fontSize: 20),
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
