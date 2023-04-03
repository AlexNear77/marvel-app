import 'package:flutter/material.dart';
import 'package:password_generator_app/pages/home.dart';
import 'package:password_generator_app/pages/list_character.dart';

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainApp();
  }
}

class _MainApp extends State<MainApp> {
  static List<Widget> pages = [Home(), ListCharacters()];
  static int currentlyIndex = 0;

  void changePage(int index) {
    setState(() {
      currentlyIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 168, 10, 10),
        title: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                Text(
                  "Comic-App",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.search, color: Colors.white)
              ],
            )
          ],
        ),
      ),
      body: pages[currentlyIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(),
        child: BottomNavigationBar(
            onTap: changePage,
            currentIndex: currentlyIndex,
            items: const [
              BottomNavigationBarItem(
                  label: "Home", icon: Icon(Icons.home_max_sharp)),
              BottomNavigationBarItem(
                  label: "Personajes", icon: Icon(Icons.people_sharp))
            ]),
      ),
    );
  }
}
