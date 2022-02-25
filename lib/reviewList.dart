import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  String pathImage1 = "assets/images/Blackzero.png";
  String name1 = "Varuna Yasas";
  String details1 = "1 review - 5 photos";
  String comment1 = "There is an amazing place in Sri Lanka";

  String pathImage2 = "assets/images/cueva.png";
  String name2 = "Varuna Yasas";
  String details2 = "2 review - 15 photos";
  String comment2 = "There is an amazing place in Sri Lanka";

  String pathImage3 = "assets/images/Playa.png";
  String name3 = "Varuna Yasas";
  String details3 = "3 review - 25 photos";
  String comment3 = "There is an amazing place in Sri Lanka";

  ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(pathImage1, name1, details1, comment1),
        Review(pathImage2, name2, details2, comment2),
        Review(pathImage3, name3, details3, comment3)
      ],
    );
  }
  
}