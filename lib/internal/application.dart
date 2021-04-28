import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storyteller/presentation/home/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(title: 'storyteller app'),
    );
  }
}