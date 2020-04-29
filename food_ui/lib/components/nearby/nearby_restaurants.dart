import 'package:flutter/material.dart';
import 'package:food_ui/components/nearby/build_restaurants.dart';

class NearbyRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Text('Nearby Restarants',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
          ),
        ),
        BuildRestaurants(),
      ],
    );
  }
}
