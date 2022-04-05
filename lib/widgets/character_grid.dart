import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/characters_provider.dart';

import '../widgets/character_item.dart';

class CharacterGrid extends StatefulWidget {
  const CharacterGrid({Key? key}) : super(key: key);

  @override
  State<CharacterGrid> createState() => _CharacterGridState();
}

class _CharacterGridState extends State<CharacterGrid> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Colors.orange),
              suffixIcon: IconButton(
                onPressed: () {
                  _controller.clear();
                  Provider.of<CharactersProvider>(context, listen: false)
                      .clearSearchCharacters();
                },
                icon: const Icon(
                  Icons.clear,
                  color: Colors.orange,
                ),
              ),
              hintText: 'Search',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.orange),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.orange),
              ),
            ),
            onChanged: (value) =>
                Provider.of<CharactersProvider>(context, listen: false)
                    .searchCharacters(value),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Consumer<CharactersProvider>(
          builder: (ctx, charData, _) => Expanded(
            child: GridView(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: charData.charItems
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
            ).build(context),
          ),
        ),
      ],
    );
  }
}
