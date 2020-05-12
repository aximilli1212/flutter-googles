import 'package:flutter/material.dart';
import 'package:budget_app/models/category_model.dart';

class CategoryScreen extends StatefulWidget {

  final Category category;
  CategoryScreen({this.category});

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            iconSize: 30.0,
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
