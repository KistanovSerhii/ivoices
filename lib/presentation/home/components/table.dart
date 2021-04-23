import 'package:flutter/material.dart';
import 'package:storyteller/CONST.dart';
import 'package:storyteller/domain/model/voice.dart';
import 'package:storyteller/presentation/home/components/voice_box.dart';

Widget table() {
  List<Voice> voices = getVoices();

  return Expanded(
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddinLow),
        child: GridView.builder(
          itemCount: voices.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: kDefaultPaddinLow,
            crossAxisSpacing: kDefaultPaddinLow,
            childAspectRatio: 2,
          ),
          itemBuilder: (context, index) =>
              VoiceBox(
                  voice: voices[index],
                  press: () => {} /*
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                        product: products[index],
                        ),
                      )*/),
        )),
  );
}



List<Voice> getVoices() {
  return [
    new Voice(
        cover: Image(image: AssetImage('assets/images/cover1.jpg'), width: 120, height: 150,),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title: "Hello world!",
        comments: "A10k",
        countListned: "L15K"
    ),

    new Voice(
        cover: Image(image: AssetImage('assets/images/cover2.jpg'), width: 120, height: 150,),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "7m",
        statusBtn: Icon(Icons.access_alarms),
        title: "Hello world!",
        comments: "A1k",
        countListned: "L2K"
    ),

    new Voice(
        cover: Image(image: AssetImage('assets/images/cover3.jpg'), width: 120, height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "2m",
        statusBtn: Icon(Icons.access_alarms),
        title: "Hello world!",
        comments: "A120",
        countListned: "L320"
    ),

    new Voice(
        cover: Image(image: AssetImage('assets/images/cover1.jpg'), width: 120, height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title: "Hello world!",
        comments: "A75",
        countListned: "L320"
    ),
    new Voice(
        cover: Image(image: AssetImage('assets/images/cover3.jpg'), width: 120, height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title: "Hello world!",
        comments: "A75",
        countListned: "L320"
    ),
    new Voice(
        cover: Image(image: AssetImage('assets/images/cover2.jpg'), width: 120, height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title: "Hello world!",
        comments: "A75",
        countListned: "L320"
    ),

  ];
}