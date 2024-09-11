import 'package:flutter/material.dart';
import '../models/annonce.dart';

class AnnonceDetailScreen extends StatelessWidget {
  final Annonce annonce;
  final String userId;  // userId comme String

  const AnnonceDetailScreen({Key? key, required this.annonce, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(annonce.titre),
      ),
      body: Column(
        children: [
          Image.network(annonce.imageUrl),
          Text(annonce.description),
        ],
      ),
    );
  }
}
