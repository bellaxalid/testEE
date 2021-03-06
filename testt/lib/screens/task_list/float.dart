import 'package:flutter/material.dart';
import 'package:testt/models/todo.dart';
class TaFloat extends StatelessWidget {
  Todo T;
  TaFloat(this.T);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            Navigator.pop(context, T);
          },
          label: const Text("Update"),
          icon: const Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {
            Navigator.pop(context, null);
          },
          label: const Text("Cancel"),
          icon: const Icon(Icons.cancel),
        ),
      ],
    );
  }
}
