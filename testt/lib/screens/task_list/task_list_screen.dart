import 'package:flutter/material.dart';
import 'package:testt/models/todo.dart';
import 'bar.dart';
import 'body.dart';
import 'float.dart';
class TaskListScreen extends StatefulWidget {
  final Todo TD;
  TaskListScreen(this.TD, {Key? key}) : super(key: key);
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}
class _TaskListScreenState extends State<TaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: TaBar(widget.TD.title),
            body: TaBody(widget.TD.myTask),
            floatingActionButton: TaFloat(widget.TD),
          ),
        ));
  }
}
