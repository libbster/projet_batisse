
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

// dartling.dart

//#import("package:unittest/unittest.dart");
#import("../unittest/unittest.dart");
#import("dart:json");
#import("dart:math");
#import("dart:uri");

#source('../dartling.dart/data/domain/model/event/actions.dart');
#source('../dartling.dart/data/domain/model/event/reactions.dart');
#source('../dartling.dart/data/domain/model/exception/errors.dart');
#source('../dartling.dart/data/domain/model/exception/exceptions.dart');
#source('../dartling.dart/data/domain/model/transfer/json.dart');
#source('../dartling.dart/data/domain/model/entities.dart');
#source('../dartling.dart/data/domain/model/entity.dart');
#source('../dartling.dart/data/domain/model/entries.dart');
#source('../dartling.dart/data/domain/model/id.dart');
#source('../dartling.dart/data/domain/model/oid.dart');
#source('../dartling.dart/data/domain/models.dart');
#source('../dartling.dart/data/domain/session.dart');

#source('../dartling.dart/data/gen/app.dart');
#source('../dartling.dart/data/gen/dartling.dart');
#source('../dartling.dart/data/gen/generated.dart');
#source('../dartling.dart/data/gen/specific.dart');
#source('../dartling.dart/data/gen/tests.dart');

#source('../dartling.dart/data/meta/attributes.dart');
#source('../dartling.dart/data/meta/children.dart');
#source('../dartling.dart/data/meta/concepts.dart');
#source('../dartling.dart/data/meta/domains.dart');
#source('../dartling.dart/data/meta/models.dart');
#source('../dartling.dart/data/meta/neighbor.dart');
#source('../dartling.dart/data/meta/parents.dart');
#source('../dartling.dart/data/meta/property.dart');
#source('../dartling.dart/data/meta/types.dart');

#source('../dartling.dart/data/repository.dart');

#source("data/dartling/skeleton/init.dart");
#source("data/dartling/skeleton/test/data.dart");
#source("data/dartling/skeleton/test/group.dart");
#source("data/dartling/skeleton/test/single.dart");
#source("data/dartling/skeleton/json/data.dart");
// do not change model
#source("data/dartling/skeleton/json/model.dart");

#source("data/gen/dartling/skeleton/entries.dart");
// do not change models
#source("data/gen/dartling/models.dart");
#source("data/gen/dartling/repository.dart");

genCode() {
  var repo = new Repo();

  // rename dartling to yourDomainName
  // change "Dartling" to "YourDomainName"
  var dartlingDomain = new Domain("Dartling");

  // rename dartling to yourDomainName
  // rename Skeleton to YourModelName
  // change "Skeleton" to "YourModelName"
  Model dartlingSkeletonModel =
      fromMagicBoxes(dartlingSkeletonModelJson, dartlingDomain, "Skeleton");

  repo.domains.add(dartlingDomain);

  repo.gen();
  //repo.gen(specific:false);
}

void main() {
  //genCode();
}
