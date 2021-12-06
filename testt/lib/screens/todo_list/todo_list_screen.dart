import 'package:flutter/material.dart';
import 'package:testt/models/todo.dart';
import 'bar.dart';
import 'body.dart';
class TScreen extends StatefulWidget {
  final List<Todo> t;
  TScreen(this.t);
  @override
  _TScreenState createState() => _TScreenState();
}
class _TScreenState extends State<TScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
          child: Scaffold(
            appBar: TBar(),
            body: TBody(),
          ),
        ));
  }
}
