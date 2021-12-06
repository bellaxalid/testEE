import 'package:flutter/material.dart';
import 'package:testt/screens/todo_list/todo_list_screen.dart';
import 'package:testt/models/mock_todo.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.purple,
      ),
      home: TScreen(myToDo),
      debugShowCheckedModeBanner: false,
    );
  }
}
