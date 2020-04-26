import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function addNewTask;

  TaskTile({this.isChecked,this.taskTitle, this.checkboxCallback, this.addNewTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough: null
      ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}


