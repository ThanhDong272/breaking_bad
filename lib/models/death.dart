import 'package:flutter/material.dart';

class Death with ChangeNotifier {
  late int deathId;
  late String death;
  late String cause;
  late String responsible;
  late String lastWords;
  late int season;
  late int episode;

  Death({
    required this.deathId,
    required this.death,
    required this.cause,
    required this.responsible,
    required this.lastWords,
    required this.season,
    required this.episode,
  });

  Death.fromJson(Map<String, dynamic> json) {
    deathId = json['death_id'];
    death = json['death'];
    cause = json['cause'];
    responsible = json['responsible'];
    lastWords = json['last_words'];
    season = json['season'];
    episode = json['episode'];
  }
}
