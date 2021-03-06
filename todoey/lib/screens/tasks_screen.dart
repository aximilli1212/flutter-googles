import 'package:flutter/material.dart';
import 'package:todoey/components/TaskList.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'add_task.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(context: context,
                builder: (context)=> AddTaskScreen(newTaskCallback:
                        ( newTaskTitle){
//                setState((){
//                  tasks.add(Task(name: newTaskTitle));
//                });
                Navigator.pop(context);
            }));
          },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlueAccent,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 50.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),

                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular (40.0))
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}


