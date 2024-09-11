import 'package:flutter/material.dart';
import '../models/annonce.dart';

class AnnonceCard extends StatelessWidget {
  final Annonce annonce;
  final VoidCallback onFavoriteToggle;

  AnnonceCard({required this.annonce, required this.onFavoriteToggle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(annonce.imageUrl),
          ListTile(
            title: Text(annonce.titre),
            subtitle: Text(annonce.description),
            trailing: IconButton(
              icon: Icon(
                annonce.isFavoris ? Icons.favorite : Icons.favorite_border,
                color: annonce.isFavoris ? Colors.red : Colors.grey,
              ),
              onPressed: onFavoriteToggle,
            ),
          ),
        ],
      ),
    );
  }
}
