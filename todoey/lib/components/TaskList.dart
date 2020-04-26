import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:todoey/models/task.dart';


class TaskList extends StatefulWidget {

  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
      itemBuilder: (context,index){
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
