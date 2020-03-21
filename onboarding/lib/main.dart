import 'package:flutter/material.dart';
import 'screens/onboard_two.dart';
import 'screens/onboard_one.dart';

void main() => runApp(EntryScreen());


class EntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardOne(),
//      home: OnboardTwo(),
    );
  }
}
