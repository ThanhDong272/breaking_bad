import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/quotes_provider.dart';

import '../widgets/quote_grid.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<QuotesProvider>(context).fetchQuotes().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;

    super.didChangeDependencies();
  }

  Future<void> _refreshQuotes(BuildContext context) async {
    final quoteProvider = Provider.of<QuotesProvider>(context, listen: false);

    quoteProvider.clearQuotes();

    await quoteProvider.fetchQuotes();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(
            child: CircularProgressIndicator(
              color: Colors.orange,
            ),
          )
        : RefreshIndicator(
            onRefresh: () => _refreshQuotes(context),
            child: QuoteGrid(),
          );
  }
}
