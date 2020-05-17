import 'package:flutter/material.dart';
import 'package:frenzy_social/data/data.dart';

class CustomDrawer extends StatelessWidget {

  _buildDrawerOption(Icon icon, String title, Function onTap){
    return ListTile(
      leading: icon,
      title: Text(title, style: TextStyle(
        fontSize: 20.0
      ),),
    );
  }


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
                bottom:20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3.0, color: Theme.of(context).primaryColor, style: BorderStyle.solid),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(
                            currentUser.profileImageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 6.0),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    )

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
