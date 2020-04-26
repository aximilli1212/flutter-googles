import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough: null
      ),
      ),
      trailing: TaskCheckBox(
          checkboxState: isChecked,
          toggleCheckbox: (bool checkboxState) {
            setState(() {
              isChecked = checkboxState;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  @override
  TaskCheckBox({this.checkboxState, this.toggleCheckbox});

  final checkboxState;
  final Function toggleCheckbox;


  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: toggleCheckbox,
        );
  }
}

