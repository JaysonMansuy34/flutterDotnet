import 'package:flutter/material.dart';
import '../models/annonce.dart';
import '../core/services/favorite_service.dart';

class FavoriteViewModel extends ChangeNotifier {
  final FavoriteService _favoriteService = FavoriteService();
  List<Annonce> _favoriteAnnonces = [];

  List<Annonce> get favoriteAnnonces => _favoriteAnnonces;

  Future<void> toggleFavorite(Annonce annonce) async {
    bool success = await _favoriteService.toggleFavorite(1 as String, annonce.id as List<int>);  // Remplace '1' par l'id réel de l'utilisateur
    if (success) {
      annonce.isFavoris = !annonce.isFavoris;
      notifyListeners();
    }
  }
}
