import 'package:flutter/material.dart';

Widget homeBody () {
  return Column(
    children: [
      homeAppBar(),
      homeFilterBar(),
      Divider(color: Colors.white,),
      filterSelector(),
    ],
  );
}


Widget homeAppBar() {
  return Row(
    children: [
      Spacer(flex: 3,),
      Center(child: appBarUserExperience()),
      Spacer(flex: 2,),
      IconButton(icon: Icon(Icons.settings), color: Colors.white, onPressed: () => {})
    ],
  );
}

Widget appBarUserExperience() {
  return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("100k", style: TextStyle(fontSize: 11.0, color: Colors.white),),
          Text("Вас услышало", style: TextStyle(fontSize: 8.0, color: Colors.white),),
        ],
      );
}

Widget homeFilterBar() {
  return Container(
    child: Row(
      children: [
        Spacer(flex: 1,),
        Text("Новости", style: TextStyle(fontSize: 12.0, color: Colors.white),),
        Spacer(flex: 4,),
        Text("Город", style: TextStyle(fontSize: 12.0, color: Colors.white),),
        Spacer(flex: 3,),
        Text("Избранное", style: TextStyle(fontSize: 12.0, color: Colors.white),),
        Spacer(),
      ],
    ),
  );
}

Widget filterSelector() {
  return Row(
    children: [
      Container(height: 5.0, width: 10.0, color: Colors.white,),
      Container(height: 5.0, color: Colors.black,),
      Container(height: 5.0, color: Colors.blue,),
    ],
  );
}