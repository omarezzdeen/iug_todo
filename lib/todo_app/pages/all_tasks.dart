import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun, funDeleted;

  AllTasksScreen(this.fun, this.funDeleted);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        // itemCount: tasksList.length,
        // itemBuilder: (context, index) {
        //   return TaskWidget(tasksList[index],fun);
        // }
        itemCount: tasksList.where((element) => !element.isDeleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasksList.where((element) => !element.isDeleted).toList()[index],
              fun);
        });
  }
}
