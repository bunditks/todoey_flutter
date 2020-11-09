import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/square_button.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/modal/task_data.dart';

class AddTaskScreen extends StatelessWidget {

//   @override
//   _AddTaskScreenState createState() => _AddTaskScreenState();
// }
//
// class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {

    String newTaskTitle = '';

    return Container(
      color: Color(0xff757575),
      // color: Colors.black,
      child: Container(
        padding: EdgeInsets.all(30.0),
        // height: 600.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              scrollPadding: EdgeInsets.only(left: 80.0, right: 80.0),
              onChanged: (value) {
                newTaskTitle = value;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(80.0, 0, 80.0, 0),
                hintText: '',
              ),
            ),
            SquaredButton(
              buttonText: 'Add',
              color: Colors.lightBlueAccent,
              onPressed: () {
 //               addTaskCallBack(newTaskTitle);
 //                setState(() {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                // });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
