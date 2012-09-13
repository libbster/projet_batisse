// test/data/projet/batisse/data_projet_batisse_test.dart

//#import("package:unittest/unittest.dart");
#import("../../../../../unittest/unittest.dart");
#import("dart:json");
#import("dart:math");
#import("dart:uri");

//#import("package:dartling/dartling.dart");
#source("../../../../../dartling/lib/data/domain/model/event/actions.dart");
#source("../../../../../dartling/lib/data/domain/model/event/reactions.dart");
#source("../../../../../dartling/lib/data/domain/model/exception/errors.dart");
#source("../../../../../dartling/lib/data/domain/model/exception/exceptions.dart");
#source("../../../../../dartling/lib/data/domain/model/transfer/json.dart");
#source("../../../../../dartling/lib/data/domain/model/entities.dart");
#source("../../../../../dartling/lib/data/domain/model/entity.dart");
#source("../../../../../dartling/lib/data/domain/model/entries.dart");
#source("../../../../../dartling/lib/data/domain/model/id.dart");
#source("../../../../../dartling/lib/data/domain/model/oid.dart");
#source("../../../../../dartling/lib/data/domain/models.dart");
#source("../../../../../dartling/lib/data/domain/session.dart");

#source("../../../../../dartling/lib/data/gen/dartling_data.dart");
#source("../../../../../dartling/lib/data/gen/dartling_view.dart");
#source("../../../../../dartling/lib/data/gen/generated.dart");
#source("../../../../../dartling/lib/data/gen/specific.dart");
#source("../../../../../dartling/lib/data/gen/tests.dart");

#source("../../../../../dartling/lib/data/meta/attributes.dart");
#source("../../../../../dartling/lib/data/meta/children.dart");
#source("../../../../../dartling/lib/data/meta/concepts.dart");
#source("../../../../../dartling/lib/data/meta/domains.dart");
#source("../../../../../dartling/lib/data/meta/models.dart");
#source("../../../../../dartling/lib/data/meta/neighbor.dart");
#source("../../../../../dartling/lib/data/meta/parents.dart");
#source("../../../../../dartling/lib/data/meta/property.dart");
#source("../../../../../dartling/lib/data/meta/types.dart");

#source("../../../../../dartling/lib/data/repository.dart");

#source("../../../../src/data/projet/batisse/json/data.dart");
#source("../../../../src/data/projet/batisse/json/model.dart");

#source("../../../../src/data/projet/batisse/init.dart");
#source("../../../../src/data/projet/batisse/batisses.dart");

#source("../../../../src/data/gen/projet/batisse/entries.dart");
#source("../../../../src/data/gen/projet/batisse/batisses.dart");
#source("../../../../src/data/gen/projet/models.dart");
#source("../../../../src/data/gen/projet/repository.dart");

testProjetBatisse(Repo repo, String domainCode, String modelCode) {
  var models;
  var session;
  var entries;
  group("Testing ${domainCode}.${modelCode}", () {
    setUp(() {
      models = repo.getDomainModels(domainCode);
      session = models.newSession();
      entries = models.getModelEntries(modelCode);
      expect(entries, isNotNull);


    });
    tearDown(() {
      entries.clear();
    });
    test("Empty Entries Test", () {
      expect(entries.empty, isTrue);
    });

  });
}

testProjetData(ProjetRepo projetRepo) {
  testProjetBatisse(projetRepo, ProjetRepo.projetDomainCode,
      ProjetRepo.projetBatisseModelCode);
}

void main() {
  var projetRepo = new ProjetRepo();
  testProjetData(projetRepo);
}




