import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';


class TaskList extends StatefulWidget {

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
