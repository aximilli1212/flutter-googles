import 'package:flutter/material.dart';
import 'package:frenzy_social/models/user_model.dart';
import 'package:frenzy_social/widgets/custom_drawer.dart';


class ProfileScreen extends StatefulWidget {

  final User user;

  ProfileScreen({this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image(height: 300.0,
                    width: double.infinity,
                    image: AssetImage(widget.user.backgroundImageUrl),
                  fit: BoxFit.cover,
                  ),
                Positioned(
                  top: 50.0,
                  left: 20.0,
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 30.0,
                    color: Theme.of(context).primaryColor,
                    onPressed: ()=> _scaffoldKey.currentState.openDrawer(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
