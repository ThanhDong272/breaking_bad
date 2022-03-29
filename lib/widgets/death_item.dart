import 'package:flutter/material.dart';

class DeathItem extends StatelessWidget {
  final int deathId;
  final String death;
  final String cause;
  final String responsible;
  final String lastWords;
  final int season;
  final int episode;

  DeathItem(
    this.deathId,
    this.death,
    this.cause,
    this.responsible,
    this.lastWords,
    this.season,
    this.episode,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 6, bottom: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 8,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              'Season ' + season.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Episode ' + episode.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Death by: ' + death,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Cause by: ' + cause,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Responsible: ' + responsible,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Last words: ' + lastWords,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
