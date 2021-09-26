import 'package:flutter/foundation.dart';

class Anime {
  final String anime;
  final String character;
  final String quote;

  Anime({required this.anime, required this.character, required this.quote});
  factory Anime.fromJson(Map<String, dynamic> json) => Anime(
      character: json["character"], quote: json["quote"], anime: json["anime"]);
}
