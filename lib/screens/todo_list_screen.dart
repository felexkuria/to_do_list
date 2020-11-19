import 'package:flutter/material.dart';

import 'add_task_screen.dart';

class ToDoListScreen extends StatefulWidget {
  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  Widget _buildTask(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: ListTile(
        title: Text('Task Tile'),
        subtitle: Text('Oct 2,2019 * High '),
        trailing: Checkbox(
          onChanged: (value) => print(value),
          activeColor: Theme.of(context).primaryColor,
          value: true,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pushNamed(context, '/addtask');
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (_) => AddTaskScreen(),
          //   ),
          // );
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My Task',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '1  of 10',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            );
          }
          return _buildTask(index);
          // return Container(
          //   height: 100,
          //   margin: EdgeInsets.all(10.0),
          //   width: double.infinity,
          //   color: Colors.red,
          // );
        },
      ),
    );
  }
}
