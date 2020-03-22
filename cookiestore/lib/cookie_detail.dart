import 'package:flutter/material.dart';


class CookieDetail extends StatelessWidget {
  Color textColor = Color(0xFF545D68);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton( // Leading icon button
          icon: Icon(
            Icons.arrow_back,
            color:  Color(0xFF545D68),
          ),
          onPressed: (){},
        ),
        title: Text("Pickup",
          style: TextStyle(
            fontFamily: 'Varela', fontSize: 20.0, color: textColor,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_none,
              color: textColor,),
          )
        ],
      ),
      body:SingleCookie(),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar() ,
    );
  }
}
