import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../configuration/env.dart';

import '../models/death.dart';

class DeathsProvider with ChangeNotifier {
  List<Death> _deathItems = [];

  List<Death> get items {
    return [..._deathItems];
  }

  Future<void> fetchDeaths() async {
    final url = Uri.parse(Environment.baseUrl + '/deaths');

    try {
      final response = await http.get(url);
      final deathData = <Death>[];

      if (response.statusCode == 200) {
        final deaths = jsonDecode(response.body);
        for (var death in deaths) {
          deathData.add(Death.fromJson(death));
        }
      }

      _deathItems = deathData;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> fetchRandomDeath() async {
    final url = Uri.parse(Environment.baseUrl + '/random-death');

    try {
      final response = await http.get(url);
      final deathData = <Death>[];

      if (response.statusCode == 200) {
        final death = jsonDecode(response.body);

        deathData.add(Death.fromJson(death));
      }

      _deathItems = deathData;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  void clearDeaths() {
    _deathItems = [];
    notifyListeners();
  }
}