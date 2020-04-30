import 'package:flutter/material.dart';
import 'package:food_ui/models/food.dart';

class BuildMenuItem extends StatelessWidget {

  BuildMenuItem({this.food});

  final Food food;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
         children: <Widget>[
           Container(
             height: 175.0,
             width: 175.0,
             decoration: BoxDecoration(
               image: DecorationImage(
                   image: AssetImage(
                       food.imageUrl
                   ),
                 fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.circular(15.0)
             ),
           ),
           Container(
             height: 175,
             width: 175,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15.0),
               gradient: LinearGradient(
                   begin: Alignment.topRight,
                   end: Alignment.bottomLeft,
                   colors: [
                     Colors.black.withOpacity(0.3),
                     Colors.black87.withOpacity(0.3),
                     Colors.black54.withOpacity(0.3),
                     Colors.black38.withOpacity(0.3),
               ],
                 stops: [
                   0.1,
                   0.4,
                   0.6,
                   0.9
                 ]
               ),
             ),
           ),
           Positioned(
             bottom: 65.0,
             child: Column(
               children: <Widget>[
                 Text(
                   food.name,
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 24.0,
                     fontWeight: FontWeight.bold,
                     letterSpacing: 1.2,
                   ),
                 ),
                 Text(
                   '\$${food.price}',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 18.0,
                     fontWeight: FontWeight.bold,
                     letterSpacing: 1.1,
                   ),
                 )
               ],
             ),
           ),
           Positioned(
             bottom: 10,
             right: 10.0,
             child: Text('Lingo'),
           )
         ],
      ),
    );
  }
}
