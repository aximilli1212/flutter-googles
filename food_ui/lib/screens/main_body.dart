import 'package:flutter/material.dart';
import 'package:food_ui/components/recents/recent_orders.dart';
import 'package:food_ui/components/nearby/nearby_restaurants.dart';

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            filled: true,
            fillColor: Colors.white,
            border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(width: 0.8,color: Colors.deepOrange),
            ),
            enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(width: 0.8,color: Colors.deepOrange),
    ),
            hintText: 'Search Food or Restaurant',
            prefixIcon: Icon(Icons.search, size: 30.0),
            suffixIcon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.close, color: Colors.grey),
            )
          ),
          ),
        ),
        RecentOrders(),
        NearbyRestaurants(),
      ],
    );
  }
}

