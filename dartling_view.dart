// dartling_view.dart

/*
http://opensource.org/licenses/

http://en.wikipedia.org/wiki/BSD_license
3-clause license ("New BSD License" or "Modified BSD License")

Copyright (c) 2012, Dartling project authors
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Dartling nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//#import("package:unittest/unittest.dart");
#import("../unittest/unittest.dart");
#import("dart:html");
#import("dart:json");
#import("dart:math");
#import("dart:uri");

//#import("package:dartling/dartling.dart");
#source("../dartling/lib/data/domain/model/event/actions.dart");
#source("../dartling/lib/data/domain/model/event/reactions.dart");
#source("../dartling/lib/data/domain/model/exception/errors.dart");
#source("../dartling/lib/data/domain/model/exception/exceptions.dart");
#source("../dartling/lib/data/domain/model/transfer/json.dart");
#source("../dartling/lib/data/domain/model/entities.dart");
#source("../dartling/lib/data/domain/model/entity.dart");
#source("../dartling/lib/data/domain/model/entries.dart");
#source("../dartling/lib/data/domain/model/id.dart");
#source("../dartling/lib/data/domain/model/oid.dart");
#source("../dartling/lib/data/domain/models.dart");
#source("../dartling/lib/data/domain/session.dart");

#source("../dartling/lib/data/gen/dartling_data.dart");
#source("../dartling/lib/data/gen/dartling_view.dart");
#source("../dartling/lib/data/gen/generated.dart");
#source("../dartling/lib/data/gen/specific.dart");
#source("../dartling/lib/data/gen/tests.dart");

#source("../dartling/lib/data/meta/attributes.dart");
#source("../dartling/lib/data/meta/children.dart");
#source("../dartling/lib/data/meta/concepts.dart");
#source("../dartling/lib/data/meta/domains.dart");
#source("../dartling/lib/data/meta/models.dart");
#source("../dartling/lib/data/meta/neighbor.dart");
#source("../dartling/lib/data/meta/parents.dart");
#source("../dartling/lib/data/meta/property.dart");
#source("../dartling/lib/data/meta/types.dart");

#source("../dartling/lib/data/repository.dart");

#source("../dartling/lib/view/component/entities.dart");
#source("../dartling/lib/view/component/entity.dart");
#source("../dartling/lib/view/component/param.dart");
#source("../dartling/lib/view/component/repo.dart");

#source("src/data/projet/batisse/json/data.dart");
#source("src/data/projet/batisse/json/model.dart");

#source("src/data/projet/batisse/init.dart");
#source("src/data/projet/batisse/batisses.dart");

#source("src/data/gen/projet/batisse/entries.dart");
#source("src/data/gen/projet/batisse/batisses.dart");
#source("src/data/gen/projet/models.dart");
#source("src/data/gen/projet/repository.dart");

initProjetData(ProjetRepo projetRepo) {
   var projetModels =
       projetRepo.getDomainModels(ProjetRepo.projetDomainCode);

   var projetBatisseEntries =
       projetModels.getModelEntries(ProjetRepo.projetBatisseModelCode);
   initProjetBatisse(projetBatisseEntries);
   projetBatisseEntries.display();
   projetBatisseEntries.displayJson();
}

showProjetData(ProjetRepo projetRepo) {
   var mainView = new View(document, "main");
   mainView.repo = projetRepo;
   new RepoMainSection(mainView);
}

void main() {
  var projetRepo = new ProjetRepo();
  initProjetData(projetRepo);
  showProjetData(projetRepo);

}
