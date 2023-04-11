import 'package:flutter/material.dart';
import 'dart:math';

import 'package:password_generator_app/pages/error.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Text(
          "Marvel Comic",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 333,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
                "https://cdn.superaficionados.com/imagenes/personajes-destacados-marvel-og.jpg"),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "¡Bienvenido a nuestra aplicación de comics de Marvel! Aquí encontrarás los mejores títulos y las historias más emocionantes. Mira nuestro catalogo!",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),

        /* Expanded(
          child: ElevatedButton(
            onPressed: () {
              // Aquí puedes agregar la lógica para ir a la pantalla de comics
            },
            child: Text("Ver comics"),
          ),
        ), */
      ],
    );
  }
}
