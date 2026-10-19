
class Tache {
  String description;

  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  Tache tache1 = Tache("Faire les devoirs");
  Tache tache2 = Tache("Etudier Dart");
  Tache tache3 = Tache("Faire les exercices");

  print("Nombre total de tâches : ${Tache.nombreTotal}");
}
