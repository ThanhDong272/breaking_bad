import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/quote.dart';

class QuoteItem extends StatelessWidget {
  final int quoteId;
  final String quote;
  final String author;

  QuoteItem(this.quoteId, this.quote, this.author);

  void _showSelectedQuote(BuildContext context) {
    Widget okayButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text('Ok'),
    );

    AlertDialog alert = AlertDialog(
      title: Text(author),
      content: Text(quote),
      actions: [
        okayButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _showSelectedQuote(context),
      borderRadius: BorderRadius.circular(8),
      child: Card(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text(
                  author,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                padding: const EdgeInsets.only(top: 4),
              ),
              Container(
                child: Text(
                  quote.length > 80 ? '${quote.substring(0, 80)}...' : quote,
                  textAlign: TextAlign.center,
                ),
                padding: const EdgeInsets.only(top: 4, right: 2, left: 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(4),
        ),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(8),
      ),
    );
  }
}
