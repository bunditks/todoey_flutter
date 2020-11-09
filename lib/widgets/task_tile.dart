import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todoey_app/modal/tasks.dart';
import 'package:todoey_app/modal/task_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {

//  TaskTile({this.isChecked, this.taskTitle, this.checkBoxCallback});

  TaskTile({this.isChecked, this.taskTitle, this.indexNo});

  final bool isChecked;
  final String taskTitle;
  final int indexNo;

//   @override
//   _TaskTileState createState() => _TaskTileState();
// }
//
// class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        Provider.of<TaskData>(context, listen: false).deleteTask(indexNo);
      },
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (bool newValue) {
          // setState(() {
            Provider.of<TaskData>(context, listen: false).toggleTask(indexNo);
          // });
        },
        //checkBoxCallback,
      ),
    );
  }
}
