import 'package:flutter/material.dart';

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
    return ListView(
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
          labelColor: Color(),
        )

      ],
    );
  }
}

