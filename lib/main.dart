import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'newsList.dart';
import 'home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //imageCache.clear();
    return MaterialApp(title: "Retro Reddit", home: Home());
  }
}
