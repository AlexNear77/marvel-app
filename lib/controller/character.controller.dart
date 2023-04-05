import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:password_generator_app/controller/models/Character.dart';
import 'package:http/http.dart' as http;

class CharacterController {
  var PRIV_KEY = "this-should-be-a-long-hash";
  var PUBLIC_KEY = "so-should-this";
  var ts = TimeOfDay.now();

  List<Character> characters = [];

  Future<List<Character>> getCharacteres() async {
    var url = Uri.http('gateway.marvel.com', 'v1/public/characters', {
      'ts': '1',
      'apikey': 'e0bc9c1a8343d95ff84923849c69e8ca',
      'hash': '2112fc954c54294afdef06b3e94df564'
    });
    var response = await http.get(url);

    String data = response.body;

    var data2 = jsonDecode(data);
    List entries = data2["data"]["results"];

    entries.forEach((element) {
      characters.add(Character.fromJson(element));
    });
    return characters;
  }
}
