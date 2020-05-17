import 'package:flutter/material.dart';
import 'package:frenzy_social/models/user_model.dart';
import 'package:frenzy_social/widgets/custom_drawer.dart';
import 'package:frenzy_social/widgets/profile_clipper.dart';


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
              alignment: Alignment.center,
              children: <Widget>[
                ClipPath(
                  clipper: ProfileClipper(),
                  child: Image(height: 300.0,
                      width: double.infinity,
                      image: AssetImage(widget.user.backgroundImageUrl),
                    fit: BoxFit.cover,
                    ),
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
                ),
                Positioned(
                  bottom: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0,2),
                          blurRadius: 6.0,
                        )
                      ]
                    ),
                    child: ClipOval(
                      child: Image(image: AssetImage(widget.user.profileImageUrl),
                        fit: BoxFit.cover,
                        height: 120.0,
                        width: 120.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.user.name,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
