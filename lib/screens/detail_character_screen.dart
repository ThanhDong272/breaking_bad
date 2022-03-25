import 'package:flutter/material.dart';

import '../widgets/detail_character.dart';

class DetailCharacterScreen extends StatelessWidget {
  static const routeName = '/detail-character';

  late int characterId;
  late String characterName;
  late String characterBirthday;
  late List<dynamic> characterOccupations;
  late String characterImage;
  late String characterStatus;
  late String characterNickname;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    characterId = routeArgs['id'];
    characterName = routeArgs['name'];
    characterBirthday = routeArgs['birthday'];
    characterOccupations = routeArgs['occupations'];
    characterImage = routeArgs['image'];
    characterStatus = routeArgs['status'];
    characterNickname = routeArgs['nickname'];

    return Scaffold(
      appBar: AppBar(
        title: Text(characterName),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.orange,
                Theme.of(context).colorScheme.primary,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: DetailCharacter(
        characterImage,
        characterBirthday,
        characterOccupations,
        characterStatus,
        characterNickname,
      ),
    );
  }
}
