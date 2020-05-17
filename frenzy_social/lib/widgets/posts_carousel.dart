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
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              )
            ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              height: 400,
              width: 300.0,
              image: AssetImage(post.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
           left: 0.0,
           bottom: 0.0,
           right: 0.0,
          child: Container(
            padding: EdgeInsets.all(12.0),
            height: 120.0,
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
              ),

            ),
            child: Column(
              children: <Widget>[
                Text(post.title),
                Text(post.location),
                Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.favorite, color: Colors.red),
                        Text(post.likes.toString()),
                      ],

                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.comment,
                        color: Theme.of(context).primaryColor,),
                        Text(post.comments.toString()),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );

  }
}
