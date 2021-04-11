import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

void main() => runApp(MaterialApp(home: Scaffold(body: Center(child: Page()))));

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      // specify tween (from 50.0 to 200.0)
      tween: Tween<double>(begin: 50.0, end: 200.0),

      // set a duration
      duration: Duration(seconds: 5),

      // set a curve
      curve: Curves.easeInOut,

      // use builder function
      builder: (context, child, value) {
        // apply animated value obtained from builder function parameter
        return Container(
          width: value,
          height: value,
          color: Colors.green,
          child: child,
        );
      },
      child: Text('Hello World'),
    );
  }
}
