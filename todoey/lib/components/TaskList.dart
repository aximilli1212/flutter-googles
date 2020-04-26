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
            final task = taskData.tasks[index];
            return TaskTile(
              deleteTask: ()=> taskData.deleteTask(task),
              taskTitle: task.name,
              isChecked: task.isDone,
               checkboxCallback: (checkboxState){
                  taskData.updateTask(task);
               },
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
