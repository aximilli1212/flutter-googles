import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name:"Buy Sugar"),
    Task(name:"He got the whole"),
    Task(name:"World in his hands."),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

}