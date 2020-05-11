import 'package:flutter/material.dart';

Color getColor(BuildContext context, double percent){
  if(percent > 0.5){
    return Theme.of(context).primaryColor;
  }else if(percent >= 2.5){
    return Colors.orange}
}    Colors.redreturn