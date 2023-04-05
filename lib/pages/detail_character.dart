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
    print(args.name);
    print("oa");
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
        ],
      ),
    );
  }
}
