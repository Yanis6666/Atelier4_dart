
class Livre {
  String titre;
  String auteur;
  int _pages;

  static int totalLivres = 0;

  Livre(this.titre, this.auteur, [this._pages = 0]) {
    totalLivres++;
  }

  int get pages {
    return _pages;
  }

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
  }

  static void afficherTotalLivres() {
    print("Nombre total de livres : $totalLivres");
  }
}

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre)
      : super(titre, auteur);

  @override
  void afficherInfos() {
    super.afficherInfos();
    print("Genre: $genre");
  }
}

void main() {
  Livre livre1 = Livre("L'Etranger", "Albert Camus", 200);
  Livre livre2 = Livre("Le Petit Prince", "Antoine de Saint-Exupery");

  livre1.afficherInfos();
  print("Pages: ${livre1.pages}");

  livre2.afficherInfos();

  Roman roman1 = Roman("Sherlock Holmes", "Arthur Conan Doyle", "Policier");
  Roman roman2 = Roman("Les Miserables", "Victor Hugo", "Historique");

  roman1.afficherInfos();
  roman2.afficherInfos();

  Livre.afficherTotalLivres();
}
