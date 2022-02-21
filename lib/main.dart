import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
          title: const Text("Share"),
        ),
        body: Stack(
          children: <Widget>[
            _imagenFondo(),
            _textoCentral(),
          ],
        ),
      ),//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }

  Widget _imagenFondo() {
    return const Image(
      image: AssetImage('assets/images/Torre_Eiffel.jpg'),
      height: double.maxFinite,
      width: double.maxFinite,
      fit: BoxFit.cover,
    );
  }

  Widget _textoCentral(){
    return Center(
      child: Container(
        height: 100,
        color: Color.fromRGBO(0, 0, 0, 0.5),
        child: const Center(
          child: Text(
            'Francia',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
