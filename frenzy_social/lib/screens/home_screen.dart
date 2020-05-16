import 'package:flutter/material.dart';
import 'package:frenzy_social/data/data.dart';
import 'package:frenzy_social/models/user_model.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        title: Center(
          child: Text('FRENZY', style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 10.0,
          ),),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3.0,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 18.0,
          ),
          tabs: <Widget>[
            Tab(text: 'Trending'),
            Tab(text: 'Latest'),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
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
                color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index){
                  User user = users[index];
                  return Image(
                    image: AssetImage(user.profileImageUrl),
                  );
                }),
              )
            ],
          )
        ],
      ),
    );
  }
}
