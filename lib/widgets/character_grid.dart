import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/characters_provider.dart';

import '../widgets/character_item.dart';

class CharacterGrid extends StatelessWidget {
  const CharacterGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final characterData = Provider.of<CharactersProvider>(context);
    final characters = characterData.items;

    return GridView(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: characters
          .map((charItem) => CharacterItem(
                charItem.charId,
                charItem.name,
                charItem.birthday,
                charItem.occupations,
                charItem.image,
                charItem.status,
                charItem.nickname,
              ))
          .toList(),
    ).build(context);
  }
}
