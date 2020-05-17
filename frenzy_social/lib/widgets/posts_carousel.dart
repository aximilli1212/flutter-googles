import 'package:flutter/material.dart';
import 'package:frenzy_social/models/post_model.dart';

class PostsCarousel extends StatelessWidget {

  final PageController pageController;
  final String title;
  final List<Post> posts;

  PostsCarousel({this.pageController, this.posts,this.title});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
