import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/deaths_provider.dart';

import '../widgets/death_list.dart';

class DeathsScreen extends StatefulWidget {
  var isLoading;

  DeathsScreen(this.isLoading);

  @override
  State<DeathsScreen> createState() => _DeathsScreenState();
}

class _DeathsScreenState extends State<DeathsScreen> {
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        widget.isLoading = true;
      });

      Provider.of<DeathsProvider>(context).fetchDeaths().then((_) {
        setState(() {
          widget.isLoading = false;
        });
      });
    }
    _isInit = false;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isLoading
        ? Center(
            child: CircularProgressIndicator(
              color: Colors.orange,
            ),
          )
        : DeathList();
  }
}
