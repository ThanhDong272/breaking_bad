import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../configuration/env.dart';

import '../models/quote.dart';

class QuotesProvider with ChangeNotifier {
  List<Quote> _items = [];

  List<Quote> get items {
    return [..._items];
  }

  Future<void> fetchQuotes() async {
    final url = Uri.parse(Environment.baseUrl + '/quotes');

    try {
      final response = await http.get(url);
      final quoteData = <Quote>[];

      if (response.statusCode == 200) {
        final quotes = jsonDecode(response.body);
        for (var quote in quotes) {
          quoteData.add(Quote.fromJson(quote));
        }
      }

      _items = quoteData;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  void clearQuotes() {
    _items = [];
    notifyListeners();
  }
}
