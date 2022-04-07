import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/quotes_provider.dart';

import '../widgets/quote_grid.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen>
    with AutomaticKeepAliveClientMixin {
  var _isInit = true;
  var _isLoading = false;

  @override
  bool get wantKeepAlive => true;

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

    setState(() {
      _isLoading = true;
    });

    await quoteProvider.fetchQuotes().then((_) {
      setState(() {
        _isLoading = false;
      });
    });
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
