import 'package:flutter/material.dart';
import 'package:untitled/screens/home_screen.dart';
import 'screens/annonce_detail_screen.dart';
import '../models/annonce.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => HomeScreen(userId: '1'),  // userId en tant que String
  '/annonce-detail': (context) => AnnonceDetailScreen(
    annonce: Annonce(
      id: 1,
      titre: "Appartement à Paris",
      description: "Un bel appartement au cœur de Paris",
      imageUrl: "https://exemple.com/image.jpg",
    ),
    userId: '1',  // userId en tant que String
  ),
};
