import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storyteller/CONST.dart';
import 'package:storyteller/domain/model/voice.dart';

class VoiceBox extends StatelessWidget {
  final Voice voice;
  final Function press;
  const VoiceBox({
    Key key,
    this.voice,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // For  demo we use fixed height  and width
              // Now we dont need them
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              child: /*Hero(
                tag: "${voice.countListned}",
                child: voice.cover,
              )*/
              voice.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              voice.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${voice.comments}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}