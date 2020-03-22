import 'package:flutter/material.dart';
import 'cookie_page.dart';

class PickupBody extends StatefulWidget
{
  @override
  _PickupBodyState createState() => _PickupBodyState();
}

class _PickupBodyState extends State<PickupBody>
    with SingleTickerProviderStateMixin
{
  TabController _tabController;

  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Categories',
            style: TextStyle(
              fontFamily: 'Varela',
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xFFC88D67),
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Color(0xFFcdcdcd),
            tabs:[
                Tab(
                  child: Text('Cookies',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                  ),
                ),Tab(
                  child: Text('Cookie cake',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                  ),
                ),Tab(
                  child: Text('Ice cream',
                  style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 21.0,
                  ),
                  ),
                ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height -20,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                CookiePage(),
                CookiePage(),
                CookiePage(),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

