import 'package:flutter/material.dart';

import 'cardImage.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/images/Lago-Moraine.jpg"),
          CardImage("assets/images/Parque-Nacional.jpg"),
          CardImage("assets/images/paisaje.jpg"),
          CardImage("assets/images/11112.jpg"),
        ],
      ),
    );
  }
  
}