// src/data/gen/projet/models.dart

class ProjetModels extends DomainModels {

  ProjetModels(Domain domain) : super(domain) {
    add(fromJsonToBatisseEntries());
  }

  BatisseEntries fromJsonToBatisseEntries() {
    return new BatisseEntries(fromMagicBoxes(
      projetBatisseModelJson,
      domain,
      ProjetRepo.projetBatisseModelCode));
  }

}







