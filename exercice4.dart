class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique.");
  }
}

class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}

class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre, durée : $dureeMinutes minutes.");
  }
}

void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre("La bataille d'Alger ", "Pierre Pellissier"));
  catalogue.add(Livre("L'Étranger", "Albert Camus"));

  catalogue.add(Film("Casa Des Papel", 195));
  catalogue.add(Film("El chapo", 162));

  for (Media media in catalogue) {
    media.afficherType();
  }
}