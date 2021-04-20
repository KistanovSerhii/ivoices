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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddinLow),
          child: Container(
            padding: const EdgeInsets.all(kDefaultPaddinLow),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                voice.cover,
                Container(
                  child: Column(children: [
                    Row(
                      children: [
                        voice.equalizer,
                        Text("${voice.timeInfo}"),
                        voice.statusBtn
                      ],
                    ),
                    Text(
                      "${voice.title}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Details"),
                        Text("A${voice.comments}K"),
                        Text("L${voice.countListned}K")
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
