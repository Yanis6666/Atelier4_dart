
abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Déconnexion réussie.");
  }
}

void main() {
  ServeurAPI serveur = ServeurAPI();
  BaseDeDonnees base = BaseDeDonnees();

  List<Connectable> services = [serveur, base];

  for (Connectable service in services) {
    service.connecter("Yanis");
    service.deconnecter();
  }
}
