import 'package:flutter/material.dart';
import 'description_place.dart';

void main() {
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
          appBar: AppBar(
            title: Text("Hola mundo feliz"),
          ),
          body: new DescriptionPlace("Bahamas", 4, texto),
        )//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}