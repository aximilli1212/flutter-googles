import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final int numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion(
        value: ThemeMode.system,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1,0.4,0.7,0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF4563DB),
                Color(0xFF5B16D0),
              ]
            ),
          ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: (){
                          print("skip");
                        },
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 600.0,
                      child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page){
                          setState((){
                            _currentPage = page;
                          });
                        },
                        children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage('images/completed.png'),
                                    height: 500.0,
                                    width: 500.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                              Text(
                                "Connect People\n Around the world.",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Text(
                                  "Lorem ipsum all the strings you can marshall for main usage."
                                )
                              ],
                            )
                         ],
                      ),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}

