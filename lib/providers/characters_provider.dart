import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../configuration/env.dart';

import '../models/character.dart';

class CharactersProvider with ChangeNotifier {
  List<Character> _characterItems = [];

  List<Character> get items {
    return [..._characterItems];
  }

  Future<void> fetchCharacters() async {
    final url = Uri.parse(Environment.baseUrl + '/characters');

    try {
      final response = await http.get(url);
      final characterData = <Character>[];

      if (response.statusCode == 200) {
        final characters = jsonDecode(response.body);
        for (var character in characters) {
          characterData.add(Character.fromJson(character));
        }
      }

      _characterItems = characterData;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }
}
