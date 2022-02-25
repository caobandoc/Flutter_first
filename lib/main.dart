import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trips_app/header.dart';
import 'package:trips_app/reviewList.dart';
import 'description_place.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light
      )
  );
  runApp(const MyApp());
}

String texto = """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultrices enim eget odio vehicula viverra. Integer iaculis suscipit vehicula. Integer molestie eget orci sit amet aliquam. Aliquam non quam eu nisi egestas posuere a lobortis dui. Suspendisse mattis lacus aliquet augue imperdiet, eu commodo dolor vulputate.""";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          /*appBar: AppBar(
            title: Text("Hola mundo feliz"),
          ),*/
          body: Stack(
            children: [
              ListView(
                children: [
                  DescriptionPlace("Bahamas", 4, texto),
                  ReviewList()
                ],
              ),
              Header(),
            ],
          )
        )//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}