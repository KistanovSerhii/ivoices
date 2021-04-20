import 'package:flutter/cupertino.dart';

class Voice {
  final Image cover;
  final Image equalizer;
  final String timeInfo;
  final Icon statusBtn;
  final String title;
  final String comments;
  final String countListned;

  Voice({this.cover,
    this.equalizer,
    this.timeInfo,
    this.statusBtn,
    this.title,
    this.comments,
    this.countListned
  });
}