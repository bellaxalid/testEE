import 'package:flutter/material.dart';
import 'package:testt/models/task.dart';
class TaBody extends StatefulWidget {
  final List<Task> t;
  TaBody(this.t);
  @override
  State<TaBody> createState() => _TaBodyState();
}
class _TaBodyState extends State<TaBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ListTile(
              title: Text(
                widget.t[index].title,
                style: widget.t[index].status == true
                    // if it is not checked apply no style
                    ? TextStyle()
                    // if it is checked, apply line through style
                    : TextStyle(decoration: TextDecoration.lineThrough),
              ),
              onTap: () {
                setState(() {
                  widget.t[index].status = !widget.t[index].status;
                });
              },
              onLongPress: () {
                setState(() {
                  widget.t.removeAt(index);
                });
              },
            ),
        separatorBuilder: (context, index) => Divider(
              color: Colors.black,
            ),
        itemCount: widget.t.length);
  }
}
