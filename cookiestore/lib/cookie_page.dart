import 'package:flutter/material.dart';

class CookiePage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFA8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('Cookie mint',   '\$31.44', 'assets/cookiemint.jpg', false, false, context),
                _buildCard('Cookie cream',   '\$43.44', 'assets/cookiecream.jpg', false, false, context),
                _buildCard('Cookie classic',   '\$23.44', 'assets/cookieclassic.jpg', false, false, context),
                _buildCard('Cookie choco',   '\$34.44', 'assets/cookiechoco.jpg', false, false, context),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added, bool isFavorite, context){
     return Padding(
       padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
       child: InkWell(
         onTap: (){},
         child: Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15.0),
             boxShadow: [
               BoxShadow(
                 color:  Colors.grey.withOpacity(0.2),
                 spreadRadius: 3.0,
                 blurRadius: 5.0,
               ),
             ],
             color: Colors.white,
           ),
           child: Column(
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: <Widget>[
                     isFavorite? Icon(Icons.favorite, color: Color(0xFFEF7532)):
                         Icon(Icons.favorite_border, color:Color(0xFFEF7532))
                   ],
                 ),
               ),
               Hero(
                 tag: imgPath,
                 child: Container(
                   height: 115.0,
                   width: 115.0,
                   decoration: BoxDecoration(
                     image: DecorationImage(image: AssetImage(imgPath),
                     fit: BoxFit.contain,
                     ),
                   ),
                 ),
       ),
               SizedBox(height: 10.0,),
               Text(price,
               style: TextStyle(
                 color: Color(0xFFCC8053),
                 fontFamily: 'Varela',
                 fontSize: 20.0,
               fontStyle: FontStyle.italic),
               ),
               SizedBox(height: 5.0),
               Text(name,
               style: TextStyle(
                 color: Color(0xFF575E67),
                 fontFamily: 'Varela',
                 fontSize: 18.0
               ),)
             ],
           ),
         ),
       ),
     );
  }

}

