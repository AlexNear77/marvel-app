import 'package:flutter/material.dart';
import 'package:password_generator_app/controller/User.dart';
import 'package:password_generator_app/controller/models/Character.dart';

class DetailCharacter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailCharacter();
  }
}

class _DetailCharacter extends State<DetailCharacter> {
  @override
  Widget build(BuildContext context) {
    final Character args =
        ModalRoute.of(context)!.settings.arguments as Character;

    print("oAAAA");

    List<dynamic> a = args.seriesList;
    print(a[0]["name"]);
    String characterName = args.name;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 168, 10, 10),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(args.image),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(characterName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(args.description,
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Number of comics: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(args.comics)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Number of series: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(args.series)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Number of stories: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(args.stories)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Number of events:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(args.events)
            ],
          ),
          listStories(args.seriesList)
        ],
      ),
    );
  }
}

Widget listStories(List<dynamic> listStories) {
  if (listStories.length == 0) {
    return Text("No have stories");
  }
  return Column(
    children: [
      SizedBox(height: 15),
      Text("Series:"),
      SizedBox(height: 10),
      if (listStories.length >= 1) Text(listStories[0]["name"]),
      if (listStories.length >= 2) Text(listStories[1]["name"]),
      if (listStories.length >= 3) Text(listStories[2]["name"]),
    ],
  );
  /* ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
            title: Text("storie:"), subtitle: listStories[index]["name"]);
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: listStories.length); */
}
