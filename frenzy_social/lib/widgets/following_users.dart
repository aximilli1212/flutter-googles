import 'package:flutter/material.dart';
import 'package:frenzy_social/data/data.dart';
import 'package:frenzy_social/models/user_model.dart';



class FollowingUsers extends StatelessWidget {
  const FollowingUsers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text('Following',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),
        Container(
          height: 80.0,
          padding: EdgeInsets.only(left: 10.0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index){
                User user = users[index];
                return GestureDetector(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color: Theme.of(context).primaryColor, width: 2.0, style: BorderStyle.solid),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0,2),
                              blurRadius: 6.0
                          ),
                        ]
                    ),
                    child: ClipOval(
                      child: Image(
                        image: AssetImage(user.profileImageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}

