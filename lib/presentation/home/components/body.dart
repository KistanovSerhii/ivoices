import 'package:flutter/material.dart';
import 'package:storyteller/CONST.dart';
import 'package:storyteller/presentation/home/components/catehorries.dart';
import 'package:storyteller/presentation/home/components/table.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        homeAppBarWidget(),
        Categories(),
        VoicesTable(),
      ],
    );
  }
}

Widget homeAppBarWidget() {
  return Row(
    children: [
      Spacer(flex: 3,),
      Center(child: appBarUserExperience()),
      Spacer(flex: 2,),
      IconButton(icon: Icon(Icons.settings), color: kTextColor, onPressed: () => {})
    ],
  );
}

Widget appBarUserExperience() {
  return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("100k", style: TextStyle(fontSize: 11.0, color: kTextColor),),
          Text("Вас услышало", style: TextStyle(fontSize: 8.0, color: kTextColor),),
        ],
      );
}