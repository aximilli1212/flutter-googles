import 'package:flutter/material.dart';

class RadialPainter extends CustomPainter{

  final Color bgColor;
  final Color lineColor;
  final double percent;
  final double width;

  RadialPainter({this.bgColor,this.lineColor,this.percent,this.width});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }

}