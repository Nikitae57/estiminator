import 'dart:convert';

import 'package:injectable/injectable.dart';

const _SESSIONS_JSON = '''
{
   "sessions":[
      {
         "title":"Title",
         "is_finished":false,
         "current_task_index":null,
         "creator_uid":"uid1",
         "estimation_scale":{
            "name":"Fibonacci",
            "values":[
               "0",
               "1/2",
               "1",
               "2",
               "3",
               "5",
               "8",
               "13",
               "20",
               "40",
               "?"
            ]
         },
         "tasks":[
            {
               "title":"Task 1 title",
               "jira_link":null,
               "description":"Task description",
               "final_estimation":null,
               "estimations":[
                  {
                     "value":"2",
                     "creator_uid":"User 1"
                  },
                  {
                     "value":"3",
                     "creator_uid":"User 2"
                  },
                  {
                     "value":"1",
                     "creator_uid":"User 3"
                  }
               ]
            },
            {
               "title":"Task 2 title",
               "jira_link":"https://google.com",
               "description":"Task 2 description",
               "final_estimation":null,
               "estimations":[
                  {
                     "value":"40",
                     "creator_uid":"User 1"
                  }
               ]
            },
            {
               "title":"Task 3 title",
               "jira_link":"https://google.com",
               "description":"Task 3 description",
               "final_estimation":null,
               "estimations":[
               ]
            }
         ]
      }
   ]
}''';

@injectable
class FakeSessionsJsonProvider {
  Map<String, dynamic> getFakeSessionsJson() {
    return jsonDecode(_SESSIONS_JSON) as Map<String, dynamic>;
  }
}
