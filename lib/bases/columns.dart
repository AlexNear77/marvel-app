import 'package:flutter/material.dart';
import 'package:password_generator_app/bases/containter_base.dart';

class ColumnsBase extends StatelessWidget {
  final ContainerBase _containerBase = ContainerBase();

  createColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _containerBase.createContainer("Item1"),
        _containerBase.createContainer("Item2"),
        _containerBase.createContainer("Item3"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: createColumn(),
    );
  }
}
