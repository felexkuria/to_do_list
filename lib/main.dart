import 'package:flutter/material.dart';
import 'package:to_do_list/screens/add_task_screen.dart';
import 'package:to_do_list/screens/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ToDoListScreen(),
        '/addtask': (context) => AddTaskScreen(),
      },
      title: 'Flutter Todo List',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    );
  }
}
