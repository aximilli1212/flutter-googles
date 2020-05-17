import 'package:flutter/material.dart';
import 'package:frenzy_social/models/post_model.dart';

class PostsCarousel extends StatelessWidget {

  final PageController pageController;
  final String title;
  final List<Post> posts;

  PostsCarousel({this.pageController, this.posts,this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),
        Container(
          height: 400.0,
          child: PageView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index){
                return _buildPosts(context , index);
              }),
        )
      ],
    );
  }

  _buildPosts(BuildContext context, int index) {
    Post post = posts[index];

    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.red,
          ),
        )
      ],
    );

  }
}
