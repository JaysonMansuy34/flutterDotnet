class Annonce {
  final int id;
  final String titre;
  final String description;
  final String imageUrl;
  bool isFavoris;

  Annonce({
    required this.id,
    required this.titre,
    required this.description,
    required this.imageUrl,
    this.isFavoris = false,
  });

  factory Annonce.fromJson(Map<String, dynamic> json) {
    return Annonce(
      id: json['id'],
      titre: json['titre'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      isFavoris: json['isFavoris'],
    );
  }
}


