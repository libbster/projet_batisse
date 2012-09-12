// data/gen/projet/repository.dart 
 
class ProjetRepo extends Repo { 
 
  static final projetDomainCode = "Projet"; 
  static final projetBatisseModelCode = "Batisse"; 
 
  ProjetRepo([String code="ProjetRepo"]) : super(code) { 
    _initProjetDomain(); 
  } 
 
  _initProjetDomain() { 
    var projetDomain = new Domain(projetDomainCode); 
    domains.add(projetDomain); 
    add(new ProjetModels(projetDomain)); 
  } 
 
} 
 
