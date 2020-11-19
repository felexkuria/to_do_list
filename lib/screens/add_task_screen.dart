import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _priority = '';
  DateTime _date = DateTime.now();
  TextEditingController _dateController = TextEditingController();
  _handleDatePicker() async {
    final DateTime date = await showDatePicker(
        context: null,
        initialDate: _date,
        firstDate: DateTime(1996),
        lastDate: DateTime(2100));
    // if (date != null && date != _date) {
    //   setState(() {
    //     _date = date;
    //   });
    //   _dateController.text = _date.toString();
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back_ios,
              size: 30.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Add Task',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (input) => input.trim().isEmpty
                          ? 'Please Enter A task Tittle'
                          : null,
                      onSaved: (input) => _title = input,
                      initialValue: _title,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      onTap: _handleDatePicker(),
                      controller: _dateController,
                      decoration: InputDecoration(
                        labelText: 'Date',
                        labelStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: TextStyle(fontSize: 18.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      validator: (input) => input.trim().isEmpty
                          ? 'Please Enter A task Tittle'
                          : null,
                      onSaved: (input) => _title = input,
                      initialValue: _title,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
