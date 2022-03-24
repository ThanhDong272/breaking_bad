import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/quotes_provider.dart';

import '../widgets/quote_item.dart';

class QuoteGrid extends StatelessWidget {
  const QuoteGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quotesData = Provider.of<QuotesProvider>(context);
    final quotes = quotesData.items;

    return GridView(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.3,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: quotes.map((quoteData) => QuoteItem(
        quoteData.quoteId,
        quoteData.quote,
        quoteData.author,
      )).toList(),
    ).build(context);
  }
}
