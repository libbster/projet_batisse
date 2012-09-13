// src/data/projet/batisse/init.dart


initProjetBatisse(var entries) {
  _initBatisses(entries);
}

_initBatisses(var entries) {
  var batisses = entries.batisses;
  var batisseConcept = batisses.concept;

  var jeanCoutuBatisse = new Batisse(batisseConcept);
  jeanCoutuBatisse.nom = 'Jean Coutu';
  batisses.add(jeanCoutuBatisse);

  var hydroQuebecBatisse = new Batisse(batisseConcept);
  hydroQuebecBatisse.nom = 'Hydro-Québec';
  batisses.add(hydroQuebecBatisse);
}
