import 'package:flutter/material.dart'; // can use foundation.dart too
import 'tasks.dart';


class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk', isDone: false),
    Task(name: 'Buy Rice', isDone: false),
  ];

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle, isDone: false));
    notifyListeners();
  }

  void deleteTask(int indexNo) {
    _tasks.removeAt(indexNo);
    notifyListeners();
  }


  void toggleTask(int indexNo) {
    _tasks[indexNo].isDone = !_tasks[indexNo].isDone;
    notifyListeners();
  }

  int taskLength () {
    return _tasks.length;
  }

  String taskName (int indexNo) {
    return _tasks[indexNo].name;
  }

  bool taskIsDone (int indexNo) {
    return _tasks[indexNo].isDone;
  }

}
