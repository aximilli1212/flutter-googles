import 'package:flutter/material.dart';
import 'package:frenzy_social/data/data.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 200.0,
                width: double.infinity,
                image: AssetImage(
                  currentUser.backgroundImageUrl,
                ),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: ,
              )
            ],
          )
        ],
      ),
    );
  }
}
