import 'package:flutter/material.dart';
import 'package:password_generator_app/components/app.dart';
import 'package:password_generator_app/routes/AppRouter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 168, 10, 10)),
        useMaterial3: true,
      ),
      home: MainApp(),
      routes: AppRouter.routers(),
    );
  }
}
