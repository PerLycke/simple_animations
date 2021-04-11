import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

var widget = MirrorAnimation<Color?>(
  // mandatory parameters
  tween: ColorTween(begin: Colors.red, end: Colors.blue),
  builder: (context, child, value) {
    return Container(color: value, width: 100, height: 100, child: child);
  },
  // optional parameters
  duration: Duration(seconds: 5),
  curve: Curves.easeInOut,
  child: Text('Hello World'),
);
