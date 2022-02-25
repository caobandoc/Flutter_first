import 'package:flutter/material.dart';
import 'package:trips_app/cardImageList.dart';
import 'package:trips_app/gradientBack.dart';

class Header extends StatelessWidget{
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Bienvenido"),
        CardImageList()
      ],
    );
  }

}