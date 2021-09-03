import 'package:estiminator/sessions_overview/domain/session_overview_domain_model.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_domain_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/sessions_overview/domain/sessions_overview_repo.dart';

const _SESSIONS_COLLECTION_NAME = 'sessions';

const _TASKS_FIELD = 'tasks';
const _SESSION_TITLE_FIELD = 'title';
const _IS_SESSION_FINISHED_FIELD = 'is_finished';
const _CREATOR_UID_FIELD = 'creator_uid';

class FirebaseSessionsOverviewService implements ISessionsOverviewRepo {
  @override
  Future<SessionsOverviewDomainModel> getSessionsOverview() async {
    final firestoreInstance = FirebaseFirestore.instance;
    final sessionsCollection = await firestoreInstance.collection(_SESSIONS_COLLECTION_NAME).get();
    final sessionsDocs = sessionsCollection.docs;

    final sessions = <SessionOverviewDomainModel>[];
    for (int i = 0; i < sessionsDocs.length; i++) {
      final sessionDoc = sessionsDocs[i];

      final sessionOverviewDomainModel = SessionOverviewDomainModel(
        id: sessionDoc.id,
        title: sessionDoc[_SESSION_TITLE_FIELD] as String,
        isFinished: sessionDoc[_IS_SESSION_FINISHED_FIELD] as bool,
        numTasks: (sessionDoc[_TASKS_FIELD] as List<dynamic>).length,
        creatorUid: sessionDoc[_CREATOR_UID_FIELD] as String,
      );

      sessions.add(sessionOverviewDomainModel);
    }
    return SessionsOverviewDomainModel(sessions: sessions);
  }
}
