import 'package:flutter/material.dart';
import 'package:food_ui/models/restaurant.dart';

class RestaurantScreen extends StatefulWidget {

  final Restaurant restaurant;

  RestaurantScreen({this.restaurant});

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 230.0,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                image: AssetImage(widget.restaurant.imageUrl),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color:Colors.white,
                      iconSize: 30.0,
                      onPressed: ()=>Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite),
                      color:Theme.of(context).primaryColor,
                      iconSize: 30.0,
                      onPressed: (){},
                    ),

                  ],
    ),
              )
            ],
          )
        ],
      ),
    );
  }
}
