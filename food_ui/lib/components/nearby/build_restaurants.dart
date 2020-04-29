import 'package:flutter/material.dart';
import 'package:food_ui/models/restaurant.dart';
import 'package:food_ui/data/data.dart';
import 'package:food_ui/screens/restaurant_screen.dart';
import 'package:food_ui/components/nearby/rating_starts.dart';

class BuildRestaurants extends StatelessWidget {

  final List<Widget> restaurantList = [];

  @override
  Widget build(BuildContext context) {
      restaurants.forEach((Restaurant restaurant){

         restaurantList.add(
             GestureDetector(
               onTap: ()=>{
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                 RestaurantScreen(restaurant: restaurant),)
                 )
               },
               child: Container(
                 margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15.0),
                   border: Border.all(
                     width: 0.8,
                     color: Colors.grey[200],
                   ),
                 ),
                 child: Row(
                   children: <Widget>[
                     ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                       child: Hero(
                         tag: restaurant.imageUrl,
                         child: Image(image: AssetImage(restaurant.imageUrl),
                         width: 150.0,
                         height: 150.0,
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                     Expanded(
                       child: Container(
                         padding: EdgeInsets.only(left: 20.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text(
                               restaurant.name,
                               style: TextStyle(
                                 fontSize: 16.0,
                                 fontWeight: FontWeight.bold,
                               ),
                               overflow: TextOverflow.ellipsis,
                             ),
                             RatingStars(restaurant.rating),
//                       SizedBox(height: 4.0),
                             Text(
                               restaurant.address,
                               style: TextStyle(
                                 fontSize: 16.0,
                                 fontWeight: FontWeight.w600,
                               ),
                               overflow: TextOverflow.ellipsis,
                             ),
                             SizedBox(height: 4.0),
                             Text(
                               '0.2 Miles Away',
                               overflow: TextOverflow.ellipsis,

                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),

         ),
             )
         );
      });
    return Column(children: restaurantList);
  }
}
