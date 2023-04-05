import 'package:flutter/material.dart';
import 'package:password_generator_app/controller/User.dart';
import 'package:password_generator_app/controller/character.controller.dart';
import 'package:password_generator_app/controller/models/Character.dart';

class ListCharacters extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListCharacters();
  }
}

class _ListCharacters extends State<ListCharacters> {
  CharacterController characterController = CharacterController();
  List<String> users = ["Alex", "Near"];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: characterController.getCharacteres(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // procesando
          return CircularProgressIndicator();
/*         } else if (snapshot.connectionState == ConnectionState.none) {
          // no lo ha procesado aun
          return Text("Error");
        } else if (snapshot.connectionState == ConnectionState.active) {
          // Ya termino pero aun esta activo aun no regresa info
          return Text("Error"); */
        } else if (snapshot.connectionState == ConnectionState.done) {
          // DONDE: Succesfull
          if (snapshot.hasData) {
            List<Character>? data = snapshot.data;
            if (data != null) {
              return createListView(data);
            } else {
              return Text("Errors");
            }
          } else {
            return Text("Errorss");
          }
        }
        return Text("Errors");
      },
    );

    /* Container(
        child: ListView.separated(
            itemBuilder: fillListView,
            separatorBuilder: (context, index) => Divider(),
            itemCount: users.length)); */
  }

  Widget createListView(List<Character> charactere) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: SizedBox(
                height: 200,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Text("imagen"))),
            trailing: Icon(Icons.arrow_right),
            title: Text(charactere[index].name),
            subtitle: Text(
              "On sale lorem lorem ",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'detail_character',
                  arguments: User(users[index]));
            },
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: charactere.length);
  }
}
