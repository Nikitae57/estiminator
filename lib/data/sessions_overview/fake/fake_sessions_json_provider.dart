import 'dart:convert';

import 'package:injectable/injectable.dart';

const _SESSIONS_JSON = '''
{
   "sessions":[
      {
         "title":"Title",
         "is_finished":false,
         "creator_uid":"uid1",
         "num_tasks":3
      },
      {
         "title":"Title 2",
         "is_finished":true,
         "creator_uid":"uid2",
         "num_tasks":1
      },
      {
         "title":"Title3",
         "is_finished":false,
         "creator_uid":"uid3",
         "num_tasks":10
      }
   ]
}''';

@injectable
class FakeSessionsJsonProvider {
  Map<String, dynamic> getFakeSessionsJson() {
    return jsonDecode(_SESSIONS_JSON) as Map<String, dynamic>;
  }
}
