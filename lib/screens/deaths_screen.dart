import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/deaths_provider.dart';

import '../widgets/death_list.dart';

class DeathsScreen extends StatefulWidget {
  const DeathsScreen({Key? key}) : super(key: key);

  @override
  State<DeathsScreen> createState() => _DeathsScreenState();
}

class _DeathsScreenState extends State<DeathsScreen>
    with AutomaticKeepAliveClientMixin {
  var _isInit = true;
  var isLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        isLoading = true;
      });

      Provider.of<DeathsProvider>(context).fetchDeaths().then((_) {
        setState(() {
          isLoading = false;
        });
      });
    }
    _isInit = false;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(
              color: Colors.orange,
            ),
          )
        : DeathList();
  }
}
