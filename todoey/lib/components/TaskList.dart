import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';


class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
      itemBuilder: (context,index){
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
