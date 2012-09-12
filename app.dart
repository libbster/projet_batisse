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
 
// app.dart 
 
//#import("package:unittest/unittest.dart"); 
#import("../unittest/unittest.dart"); 
#import("dart:html"); 
#import("dart:json"); 
#import("dart:math"); 
#import("dart:uri"); 
 
#source("../dartling/data/domain/model/event/actions.dart"); 
#source("../dartling/data/domain/model/event/reactions.dart"); 
#source("../dartling/data/domain/model/exception/errors.dart"); 
#source("../dartling/data/domain/model/exception/exceptions.dart"); 
#source("../dartling/data/domain/model/transfer/json.dart"); 
#source("../dartling/data/domain/model/entities.dart"); 
#source("../dartling/data/domain/model/entity.dart"); 
#source("../dartling/data/domain/model/entries.dart"); 
#source("../dartling/data/domain/model/id.dart"); 
#source("../dartling/data/domain/model/oid.dart"); 
#source("../dartling/data/domain/models.dart"); 
#source("../dartling/data/domain/session.dart"); 
 
#source("../dartling/data/gen/app.dart"); 
#source("../dartling/data/gen/dartling.dart"); 
#source("../dartling/data/gen/generated.dart"); 
#source("../dartling/data/gen/specific.dart"); 
#source("../dartling/data/gen/tests.dart"); 
 
#source("../dartling/data/meta/attributes.dart"); 
#source("../dartling/data/meta/children.dart"); 
#source("../dartling/data/meta/concepts.dart"); 
#source("../dartling/data/meta/domains.dart"); 
#source("../dartling/data/meta/models.dart"); 
#source("../dartling/data/meta/neighbor.dart"); 
#source("../dartling/data/meta/parents.dart"); 
#source("../dartling/data/meta/property.dart"); 
#source("../dartling/data/meta/types.dart"); 
 
#source("../dartling/data/repository.dart"); 
 
#source("../dartling/view/component/entities.dart"); 
#source("../dartling/view/component/entity.dart"); 
#source("../dartling/view/component/param.dart"); 
#source("../dartling/view/component/repo.dart"); 
 
#source("data/projet/batisse/json/data.dart"); 
#source("data/projet/batisse/json/model.dart"); 
 
#source("data/projet/batisse/test/data.dart"); 
#source("data/projet/batisse/test/group.dart"); 
#source("data/projet/batisse/test/single.dart"); 
 
#source("data/projet/batisse/init.dart"); 
#source("data/projet/batisse/batisses.dart"); 
 
#source("data/gen/projet/batisse/entries.dart"); 
#source("data/gen/projet/batisse/batisses.dart"); 
#source("data/gen/projet/models.dart"); 
#source("data/gen/projet/repository.dart"); 
 
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
  //showProjetData(projetRepo); 
 
} 
 