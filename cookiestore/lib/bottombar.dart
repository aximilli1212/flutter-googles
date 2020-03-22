import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {

  Color textOrange = Color(0xFFEF7532);
  Color textGrey = Color(0xFF676e79);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      elevation: 9.0,
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          color: Colors.white,
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width /2 - 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                      Icon(Icons.home, color: textOrange,size: 30.0),
                      Icon(Icons.person_outline, color: textGrey,size: 30.0),
                    ],
                ),
              ),
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width /2 - 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.search, color: textOrange,size: 30.0),
                      Icon(Icons.shopping_basket, color: textGrey,size: 30.0),
                    ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
