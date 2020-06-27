import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'newsList.dart';
import 'home.dart';

void main() => runApp(App());


class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Networking Test",
     
      home: Home()
    );
  }

}
