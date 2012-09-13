// src/data/gen/projet/batisse/batisses.dart

abstract class BatisseGen extends ConceptEntity<Batisse> {

  BatisseGen(Concept concept) : super.of(concept);

  BatisseGen.withId(Concept concept, String nom) : super.of(concept) {
    setAttribute("nom", nom);
  }

  String get nom => getAttribute("nom");
  set nom(String a) => setAttribute("nom", a);

  Batisse newEntity() => new Batisse(concept);

  int nomCompareTo(Batisse other) {
    return nom.compareTo(other.nom);
  }

}

abstract class BatissesGen extends Entities<Batisse> {

  BatissesGen(Concept concept) : super.of(concept);

  Batisses newEntities() => new Batisses(concept);

}
