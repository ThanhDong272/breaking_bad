import 'package:flutter/material.dart';

class Character with ChangeNotifier {
  late int charId;
  late String name;
  late String birthday;
  late List<dynamic> occupations;
  late String image;
  late String status;
  late String nickname;

  Character({
    required this.charId,
    required this.name,
    required this.birthday,
    required this.occupations,
    required this.image,
    required this.status,
    required this.nickname,
  });

  Character.fromJson(Map<String, dynamic> json) {
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    occupations = json['occupation'];
    image = json['img'];
    status = json['status'];
    nickname = json['nickname'];
  }
}
