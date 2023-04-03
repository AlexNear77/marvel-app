import 'package:flutter/material.dart';
import 'package:password_generator_app/controller/User.dart';

class ListCharacters extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListCharacters();
  }
}

class _ListCharacters extends State<ListCharacters> {
  List<String> users = ["Alex", "Near"];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: SizedBox(
                      height: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Text("imagen"))),
                  trailing: Icon(Icons.arrow_right),
                  title: Text(users[index]),
                  subtitle: Text(
                    "On sale lorem lorem ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'detail_character',
                        arguments: User(users[index]));
                  },
                ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: users.length));
  }
}
