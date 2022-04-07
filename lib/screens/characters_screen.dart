import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/characters_provider.dart';

import '../widgets/character_grid.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen>
    with AutomaticKeepAliveClientMixin {
  var _isInit = true;
  var _isLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration.zero).then((_) {
      Provider.of<CharactersProvider>(context, listen: false)
          .fetchCharacters()
          .then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    });

    super.initState();
  }

  // @override
  // void didChangeDependencies() {
  //   if (_isInit) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     Provider.of<CharactersProvider>(context).fetchCharacters().then((_) {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     });
  //   }
  //   _isInit = false;

  //   super.didChangeDependencies();
  // }

  Future<void> _refreshCharacters(BuildContext context) async {
    final characterProvider =
        Provider.of<CharactersProvider>(context, listen: false);

    characterProvider.clearCharacters();

    setState(() {
      _isLoading = true;
    });

    await characterProvider.fetchCharacters().then((_) {
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
            onRefresh: () => _refreshCharacters(context),
            child: CharacterGrid(),
          );
  }
}
