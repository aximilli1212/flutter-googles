import 'package:flutter/material.dart';
import 'package:food_ui/models/restaurant.dart';
import 'package:food_ui/data/data.dart';

class BuildRestaurants extends StatelessWidget {

  final List<Widget> restaurantList = [];

  @override
  Widget build(BuildContext context) {
      restaurants.forEach((Restaurant restaurant){
         restaurantList.add(
             Container(
               margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(15.0),
                 border: Border.all(
                   width: 20.0,
                   color: Colors.grey,
                 ),
               ),

         )
         );
      });
    return Column(children: restaurantList);
  }
}
