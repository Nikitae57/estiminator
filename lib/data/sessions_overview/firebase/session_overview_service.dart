import 'package:estiminator/domain/sessions_overview/session_overview_domain_model.dart';
import 'package:estiminator/domain/sessions_overview/sessions_overview_domain_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/domain/sessions_overview/sessions_overview_repo.dart';

const _SESSIONS_COLLECTION_NAME = 'sessions';
const _TASKS_COLLECTION_NAME = 'tasks';

const _SESSION_TITLE_KEY = 'title';
const _IS_SESSION_FINISHED_KEY = 'is_finished';
const _CREATOR_UID_KEY = 'creator_uid';

class FirebaseSessionsOverviewService implements ISessionsOverviewRepo {
  @override
  Future<SessionsOverviewDomainModel> getSessionsOverview() async {
    final firestoreInstance = FirebaseFirestore.instance;
    final sessionsCollection = await firestoreInstance.collection(_SESSIONS_COLLECTION_NAME).get();
    final sessionsDocs = sessionsCollection.docs;

    final sessions = <SessionOverviewDomainModel>[];
    for (int i = 0; i < sessionsDocs.length; i++) {
      final sessionDoc = sessionsDocs[i];
      final sessionDocAsJson = sessionDoc.data();
      final tasksQuerySnapshot = await firestoreInstance
          .collection(_SESSIONS_COLLECTION_NAME)
          .doc(sessionDoc.id)
          .collection(_TASKS_COLLECTION_NAME)
          .get();

      final sessionOverviewDomainModel = SessionOverviewDomainModel(
        title: sessionDocAsJson[_SESSION_TITLE_KEY] as String,
        isFinished: sessionDocAsJson[_IS_SESSION_FINISHED_KEY] as bool,
        numTasks: tasksQuerySnapshot.size,
        creatorUid: sessionDocAsJson[_CREATOR_UID_KEY] as String,
      );

      sessions.add(sessionOverviewDomainModel);
    }
    return SessionsOverviewDomainModel(sessions: sessions);
  }
}
