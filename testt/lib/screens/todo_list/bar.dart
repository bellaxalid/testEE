import 'package:flutter/material.dart';

class TBar extends StatefulWidget implements PreferredSizeWidget {
  TBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  State<TBar> createState() => _TBarState();
}

class _TBarState extends State<TBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: Text("My To Do List"),
      centerTitle: false,
      leadingWidth: 0,
    );
  }
}
