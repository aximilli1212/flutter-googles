import 'package:flutter/material.dart';
import 'TaskTile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';


class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return  ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
          itemBuilder: (context,index){
            return TaskTile(
              taskTitle: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
            );
          },
          itemCount: taskData.tasks.length,
        );
      }
    );
  }
}
