import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatelessWidget {

final Function newTaskCallback;

AddTaskScreen({this.newTaskCallback});

  String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff757575),
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular (40.0))
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    onChanged: (val){
                      newTask = val;
                    },
                    textAlign: TextAlign.center,
                    autofocus: true,
                    cursorColor: Colors.lightBlueAccent,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.lightBlueAccent),
                      fillColor: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                RaisedButton(
                  onPressed:(){
                      Provider.of<TaskData>(context, listen: false).addTask(newTask);
                      Navigator.pop(context);
                },
                  child: Text('Add', style: TextStyle(color: Colors.white),),
                  color: Colors.lightBlueAccent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}