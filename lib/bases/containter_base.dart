import 'package:flutter/material.dart';

class ContainerBase extends StatelessWidget {
  late String _title;

  createContainer(String title) {
    _title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(top: 10), child: Text(_title));
  }
}
