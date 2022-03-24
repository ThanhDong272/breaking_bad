import 'package:flutter/material.dart';

import '../screens/detail_character_screen.dart';

class CharacterItem extends StatelessWidget {
  final int charId;
  final String name;
  final String birthday;
  final List<dynamic> occupations;
  final String image;
  final String status;
  final String nickname;

  CharacterItem(
    this.charId,
    this.name,
    this.birthday,
    this.occupations,
    this.image,
    this.status,
    this.nickname,
  );

  void _selectCharacter(BuildContext context) {
    Navigator.of(context).pushNamed(
      DetailCharacter.routeName,
      arguments: {
        'id': charId,
        'name': name,
        'birthday': birthday,
        'occupations': occupations,
        'image': image,
        'status': status,
        'nickname': nickname,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () => _selectCharacter(context),
        borderRadius: BorderRadius.circular(8),
        child: GridTile(
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.white54,
            title: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
