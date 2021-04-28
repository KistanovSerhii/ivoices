import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storyteller/presentation/home/components/body.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: HomeBody()),
    );
  }
}