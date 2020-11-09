import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/modal/tasks.dart';
import 'package:todoey_app/modal/task_data.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
//
//   @override
//   _TasksListState createState() => _TasksListState();
// }
//
// class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context, listen: false).taskName(index),
          isChecked: Provider.of<TaskData>(context, listen: false).taskIsDone(index),
          indexNo: index,
          // checkBoxCallback: (bool newValue) {
          //   setState(() {
          //     Provider.of<TaskData>(context, listen: false).tasks[index].toggleDone();
          //   });
          // },
        );
      },
      itemCount: Provider.of<TaskData>(context, listen: false).taskLength(),
    );

  }
}
