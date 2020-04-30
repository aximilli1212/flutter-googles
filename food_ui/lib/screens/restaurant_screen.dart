import 'package:flutter/material.dart';
import 'package:food_ui/models/restaurant.dart';
import 'package:food_ui/components/nearby/rating_starts.dart';

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
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 230.0,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.restaurant.imageUrl),
                ),
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
          ),
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(widget.restaurant.name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('0.2 miles away',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          RatingStars(widget.restaurant.rating),
          SizedBox(height: 6.0),
          Text(
            widget.restaurant.address,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey,
            ),
          )

        ],
      ),
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               FlatButton(
                 onPressed: (){},
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                 ),
                  color: Theme.of(context).primaryColor,
                 padding: EdgeInsets.symmetric(horizontal: 30.0),
                 child: Text('Reviews', style: TextStyle(color: Colors.white),),
               ),
               FlatButton(
                 onPressed: (){},
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10.0),
                 ),
                  color: Theme.of(context).primaryColor,
                 padding: EdgeInsets.symmetric(horizontal: 30.0),
                 child: Text('Contact', style: TextStyle(color: Colors.white),),
               )
             ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('Menu',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
          ),
          SizedBox(height: 10.0),


        ],
      ),
    );
  }
}
