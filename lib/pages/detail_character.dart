import 'package:flutter/material.dart';
import 'package:password_generator_app/controller/User.dart';

class DetailCharacter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailCharacter();
  }
}

class _DetailCharacter extends State<DetailCharacter> {
  @override
  Widget build(BuildContext context) {
    User args = ModalRoute.of(context)?.settings.arguments as User;
    print(args);
    String userName = args.name;
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
              child: Text("imagen"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text("Ironman",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Numero de comics:",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("12")
            ],
          ),
          Center(
            child: Text(
                "Descriptcion lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem",
                style: TextStyle(color: Colors.grey, fontSize: 16)),
          )
        ],
      ),
    );
  }
}
