import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/models/annonce.dart';
import '../models/annonce.dart';

void main() {
  test('Test d\'une instance d\'Annonce', () {
    Annonce annonce = Annonce(
      id: 1,
      titre: "Appartement à Paris",
      description: "Un bel appartement au cœur de Paris",
      imageUrl: "https://exemple.com/image.jpg",
    );

    expect(annonce.id, 1);
    expect(annonce.titre, "Appartement à Paris");
  });
}
