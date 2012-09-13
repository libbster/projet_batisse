// src/data/gen/projet/batisse/entries.dart

class BatisseEntries extends ModelEntries {

  BatisseEntries(Model model) : super(model);

  Map<String, Entities> newEntries() {
    var entries = new Map<String, Entities>();
    var concept;
    concept = model.concepts.findByCode("Batisse");
    entries["Batisse"] = new Batisses(concept);
    return entries;
  }

  Entities newEntities(String conceptCode) {
    var concept = model.concepts.findByCode(conceptCode);
    if (concept == null) {
      throw new ConceptException("${conceptCode} concept does not exist.") ;
    }
    if (concept.code == "Batisse") {
      return new Batisses(concept);
    }
  }

  ConceptEntity newEntity(String conceptCode) {
    var concept = model.concepts.findByCode(conceptCode);
    if (concept == null) {
      throw new ConceptException("${conceptCode} concept does not exist.") ;
    }
    if (concept.code == "Batisse") {
      return new Batisse(concept);
    }
  }

  fromJsonToData() {
    fromJson(projetBatisseDataJson);
  }

  Batisses get batisses => getEntry("Batisse");

}

