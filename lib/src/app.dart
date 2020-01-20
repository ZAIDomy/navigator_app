import 'package:flutter/material.dart';
import 'package:navigator/src/screens/second.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final String title = "Primera Pantalla";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Motstar Pantalla"),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Second(title: "Hola 2da pantalla")
                )
            );
          },
        )
        ),
    );
  }
}