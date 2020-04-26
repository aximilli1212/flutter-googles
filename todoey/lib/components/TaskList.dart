import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:todoey/models/task.dart';


class TaskList extends StatefulWidget {



  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
  Task(name:"Buy Sugar"),
  Task(name:"Call Sumanguru yino."),
  Task(name:"We were made to be courageous."),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
