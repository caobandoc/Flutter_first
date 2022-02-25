import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage = "assets/images/Blackzero.png";
  String name = "Varuna Yasas";
  String details = "1 review - 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final star = Container(
      margin: const EdgeInsets.only(
          top:3.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starts = Row(
      children: [
        star,
        star,
        star,
        star,
        star,
      ],
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left:20.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            fontSize: 13.0
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left:20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userInfoStarts = Row(
      children: [
        userInfo,
        starts
      ],
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left:20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfoStarts,
        userComment
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left:20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(pathImage)
        )
      ),
    );

    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }

}