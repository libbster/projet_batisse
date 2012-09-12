// data/projet/batisse/init.dart 
 
initProjetBatisse(var entries) { 
  _initBatisses(entries); 
 } 

 _initBatisses(var entries) {
   Batisses batisses = entries.batisses;
   Concept batisseConcept = batisses.concept;

   Batisse jeancoutubatisse = new Batisse(batisseConcept);
   jeancoutubatisse.nom = 'Jean Coutu';
   batisses.add(jeancoutubatisse);
} 
 