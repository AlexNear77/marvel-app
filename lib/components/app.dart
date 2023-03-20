import 'package:flutter/material.dart';
import 'package:password_generator_app/pages/config.dart';
import 'package:password_generator_app/pages/home.dart';

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainApp();
  }
}

class _MainApp extends State<MainApp> {
  static List<Widget> pages = [
    Home(),
    Configuration()
  ]; // Se coloca Final por que en tiempo de ejecucion (Que este corriendo el programa) no va a cambiar por otro lado CONST mantiene el valir fijo desde antes de hacer la compilacion
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
        title: const Text("Password Generator App"),
        titleSpacing: 100,
      ),
      body: pages[currentlyIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(),
        child: BottomNavigationBar(
            onTap: changePage,
            currentIndex: currentlyIndex,
            items: [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: "Configuration", icon: Icon(Icons.dashboard_customize))
            ]),
      ),
    );
  }
}
