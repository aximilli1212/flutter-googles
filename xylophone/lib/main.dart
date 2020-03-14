import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('Xylophone'),
          )

      ),

    );
  }
}
