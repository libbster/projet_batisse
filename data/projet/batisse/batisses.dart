// data/projet/batisse/batisses.dart 
 
class Batisse extends BatisseGen { 
 
  Batisse(Concept concept) : super(concept); 
 
  Batisse.withId(Concept concept, String nom) : 
    super.withId(concept, nom); 
 
} 
 
class Batisses extends BatissesGen { 
 
  Batisses(Concept concept) : super(concept); 
 
} 
 