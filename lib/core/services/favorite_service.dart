import 'package:http/http.dart' as http;
import 'dart:convert';

class FavoriteService {
  final String baseUrl = "http://localhost:5165/Favorites";

  Future<bool> toggleFavorite(String userId, List<int> adIds) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'userId': userId,
          'adIds': adIds,
        }),
      );

      print('Status code: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201) {
        return true; // Requête réussie
      } else {
        print("Erreur lors de l'ajout aux favoris : ${response.statusCode}");
        return false;
      }
    } catch (e) {
      print("Erreur lors de l'appel API : $e");  // Ajout de log pour les erreurs
      return false;
    }
  }
}
