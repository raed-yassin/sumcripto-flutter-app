import 'package:flutter/material.dart';

class NewTasks extends StatefulWidget {
  const NewTasks({super.key});

  @override
  State<NewTasks> createState() => _NewTasksState();
}

class _NewTasksState extends State<NewTasks> {
  @override
  Widget build(BuildContext context) {
    return Text("New Tasks");
  }
}