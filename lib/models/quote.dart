import 'package:flutter/material.dart';

class Quote with ChangeNotifier {
  late int quoteId;
  late String quote;
  late String author;

  Quote({
    required this.quoteId,
    required this.quote,
    required this.author,
  });

  Quote.fromJson(Map<String, dynamic> json) {
    quoteId = json['quote_id'];
    quote = json['quote'];
    author = json['author'];
  }
}
