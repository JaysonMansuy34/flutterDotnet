import 'package:flutter/material.dart';

class Annonce {
  final int id;
  final String title;
  final String description;

  Annonce({required this.id, required this.title, required this.description});
}

// List d'annonces statiques
List<Annonce> annonces = [
  Annonce(id: 1, title: "Appartement à Paris", description: "Un bel appartement au cœur de Paris"),
  Annonce(id: 2, title: "Maison à Marseille", description: "Maison spacieuse près de la plage"),
  Annonce(id: 3, title: "Studio à Lyon", description: "Studio cosy au centre de Lyon"),
];
