import 'calculs.dart';

// 2. Déclaration de Variables
void variables() {
  String nom = "Fall";
  int age = 23;
  double pi = 3.14;
  bool isFlutterAwesome = true;

  final String nomComplet = "Serigne Ndaraw Fall";
  const int vitesseLumiere = 299792458;

  print("Nom : $nom");
  print("Âge : $age");
  print("Pi : $pi");
  print("Flutter est génial : $isFlutterAwesome");
  print("Nom complet : $nomComplet");
  print("Vitesse de la lumière : $vitesseLumiere m/s");
}

// 3. Utilisation des Listes et Maps
void collections() {
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);
  print("Liste des nombres : $nombres");

  Map<String, dynamic> etudiant = {
    "nom": "Fall",
    "age": 23,
    "classe": "DFE 4",
  };
  etudiant["note"] = 85;
  print("Détails de l'étudiant : $etudiant");
}

// 4. Fonctions
void bonjour(String nom) {
  print("Bonjour, $nom!");
}

int addition(int a, int b) {
  return a + b;
}

void fonctions() {
  bonjour("Fall");
  int resultat = addition(5, 7);
  print("Résultat de l'addition : $resultat");
}

// 5. Conditions et Boucles
void conditionsBoucles() {
  int nombre = 5;

  if (nombre > 0) {
    print("Le nombre est positif.");
  } else if (nombre < 0) {
    print("Le nombre est négatif.");
  } else {
    print("Le nombre est zéro.");
  }

  for (int i = 1; i <= 10; i++) {
    print("For Loop: $i");
  }

  int j = 10;
  while (j > 0) {
    print("While Loop: $j");
    j--;
  }
}

// 6. Gestion des Exceptions
double division(int a, int b) {
  if (b == 0) {
    throw Exception("Division par zéro non autorisée.");
  }
  return a / b;
}

void exceptions() {
  try {
    print(division(10, 2));
    print(division(10, 0));
  } catch (e) {
    print("Erreur : $e");
  }
}

// 7. Classes et Héritage
class Personne {
  String nom;
  int age;

  Personne(this.nom, this.age);
}

class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

void classes() {
  Personne personne1 = Personne("Fall", 23);
  print("Personne : ${personne1.nom}, Âge : ${personne1.age}");

  Etudiant etudiant1 = Etudiant("Fall", 23, "DFE 4");
  print("Étudiant : ${etudiant1.nom}, Classe : ${etudiant1.classe}");
}

// 8. Getters et Setters
class Individu {
  String _nom = "";
  int _age = 0;

  String get nom => _nom;
  set nom(String nom) => _nom = nom;

  int get age => _age;
  set age(int age) => _age = age;
}

void gettersSetters() {
  Individu individu = Individu();
  individu.nom = "Fall";
  individu.age = 23;

  print("Nom : ${individu.nom}, Âge : ${individu.age}");
}

// 9. Asynchrone
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Données reçues";
}

Stream<int> streamPeriodique() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void asynchrone() async {
  print(await fetchData());

  await for (var valeur in streamPeriodique()) {
    print("Stream Value: $valeur");
  }
}

// 10. Exercices pratiques
int factorielle(int n) {
  if (n <= 1) return 1;
  return n * factorielle(n - 1);
}

List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((n) => n % 2 == 0).toList();
}

void exercices() {
  print("Factorielle de 5 : ${factorielle(5)}");
  print("Nombres pairs : ${filtrerPairs([1, 2, 3, 4, 5])}");
}

// 11. Organisation en Modules
// C'est calculs.dart qui contient la fonction carre , je l'ai mis la

void modules() {
  print("Carré de 4 : ${carre(4)}");
}

// Fonction principale pour exécuter les exercices
void main() {
  print("=== Variables ===");
  variables();

  print("\n=== Collections ===");
  collections();

  print("\n=== Fonctions ===");
  fonctions();

  print("\n=== Conditions et Boucles ===");
  conditionsBoucles();

  print("\n=== Exceptions ===");
  exceptions();

  print("\n=== Classes et Héritage ===");
  classes();

  print("\n=== Getters et Setters ===");
  gettersSetters();

  print("\n=== Asynchrone ===");
  asynchrone();

  print("\n=== Exercices Pratiques ===");
  exercices();

  print("\n=== Modules ===");
  modules();
}
