import 'package:flutter/material.dart';
import 'package:food_ui/models/food.dart';

class BuildMenuItem extends StatelessWidget {

  BuildMenuItem({this.food});

  final Food food;


  @override
  Widget build(BuildContext context) {
    return Stack(
       children: <Widget>[
         Container(
           height: 175.0,
           width: 175.0,
           decoration: BoxDecoration(
             image: DecorationImage(
                 image: AssetImage(
                     food.imageUrl
                 ),
             ),
           ),
         )
       ],
    );
  }
}
