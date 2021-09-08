import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/session/data/model/estimation_scale_domain_model_mapper.dart';
import 'package:estiminator/session/data/model/session_data_model.dart';
import 'package:estiminator/session/data/model/session_domain_model_mapper.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/session/domain/session_repo.dart';
import 'package:injectable/injectable.dart';

const String _SESSIONS_COLLECTION_NAME = 'sessions';
const String _SCALES_COLLECTION_NAME = 'estimation_scales';

const String _SESSION_SCALE_NAME_FIELD = 'scale_name';
const String _SCALE_NAME_FIELD = 'name';
const String _SESSION_TASKS_FIELD = 'tasks';
const String _SESSION_ESTIMATIONS_FIELD = 'estimations';
const String _ESTIMATION_CREATOR_UID_FIELD = 'creator_uid';
const String _ESTIMATION_VALUE_FIELD = 'value';
const String _TASK_FINAL_ESTIMATION_FIELD = 'final_estimation';
const String _TASK_ARE_CARDS_FLIPPED_FIELD = 'are_cards_flipped';
const String _SESSION_CURRENT_TASK_INDEX = 'current_task_index';
const String _SESSION_IS_FINISHED = 'is_finished';

@Injectable(as: ISessionRepo)
class SessionFirebaseRepo implements ISessionRepo {
  SessionFirebaseRepo(this._sessionDomainModelMapper, this._estimationScaleDomainModelMapper);

  final SessionDomainModelMapper _sessionDomainModelMapper;
  final EstimationScaleDomainModelMapper _estimationScaleDomainModelMapper;

  /// Gets stream of session where [sessionId] is a document path
  @override
  Stream<SessionDomainModel> getSessionStream(String sessionId) {
    final firestore = FirebaseFirestore.instance;
    return firestore.collection(_SESSIONS_COLLECTION_NAME).doc(sessionId).snapshots().map((sessionDoc) {
      final sessionDataModel = SessionDataModel(id: sessionDoc.id, json: sessionDoc.data()!);
      return _sessionDomainModelMapper.map(sessionDataModel);
    });
  }

  /// Gets scale for a session
  /// [sessionId] in case of firebase is document path
  @override
  Future<EstimationScaleDomainModel> getScale({required String sessionId}) async {
    final firestore = FirebaseFirestore.instance;
    final sessionDoc = await firestore
        .collection(_SESSIONS_COLLECTION_NAME)
        .where(
          FieldPath.documentId,
          isEqualTo: sessionId,
        )
        .get();
    final scaleName = sessionDoc.docs[0][_SESSION_SCALE_NAME_FIELD] as String;
    final scaleDoc = await firestore
        .collection(_SCALES_COLLECTION_NAME)
        .where(
          _SCALE_NAME_FIELD,
          isEqualTo: scaleName,
        )
        .get();

    return _estimationScaleDomainModelMapper.map(scaleDoc.docs[0].data());
  }

  Future<SessionDataModel> _getSession(String sessionId) async {
    final firestore = FirebaseFirestore.instance;
    final sessionDoc = await firestore.collection(_SESSIONS_COLLECTION_NAME).doc(sessionId).get();

    return SessionDataModel(id: sessionDoc.id, json: sessionDoc.data()!);
  }

  @override
  Future<void> resetTaskEstimations({required String sessionId, required int taskIndex}) async {
    final sessionDataModel = await _getSession(sessionId);
    final sessionJson = sessionDataModel.json;
    // setting empty array to session's tasks field
    // ignore: avoid_dynamic_calls
    sessionJson[_SESSION_TASKS_FIELD][taskIndex][_SESSION_ESTIMATIONS_FIELD] = <Map<String, dynamic>>[];
    // we want to update only tasks field, not entire session
    final tasksJson = <String, dynamic>{_SESSION_TASKS_FIELD: sessionJson[_SESSION_TASKS_FIELD]};

    return FirebaseFirestore.instance.collection(_SESSIONS_COLLECTION_NAME).doc(sessionId).update(tasksJson);
  }

  @override
  Future<void> pickEstimation({
    required String sessionId,
    required int taskIndex,
    required String creatorUid,
    required String estimation,
  }) async {
    final sessionDataModel = await _getSession(sessionId);
    final sessionJson = sessionDataModel.json;

    final estimations = sessionJson[_SESSION_TASKS_FIELD][taskIndex][_SESSION_ESTIMATIONS_FIELD] as List<dynamic>;
    estimations.add(<String, String>{_ESTIMATION_CREATOR_UID_FIELD: creatorUid, _ESTIMATION_VALUE_FIELD: estimation});

    // we want to update only tasks field, not entire session
    final tasksJson = <String, dynamic>{_SESSION_TASKS_FIELD: sessionJson[_SESSION_TASKS_FIELD]};

    return FirebaseFirestore.instance.collection(_SESSIONS_COLLECTION_NAME).doc(sessionId).update(tasksJson);
  }

  @override
  Future<void> pickFinalEstimation({
    required String sessionId,
    required int taskIndex,
    required String creatorUid,
    required String estimation,
  }) async {
    final sessionDataModel = await _getSession(sessionId);
    final sessionJson = sessionDataModel.json;

    final tasksCount = (sessionJson[_SESSION_TASKS_FIELD] as List<dynamic>).length;

    sessionJson[_SESSION_TASKS_FIELD][taskIndex][_TASK_FINAL_ESTIMATION_FIELD] = estimation;

    final currentTaskIndex = (sessionJson[_SESSION_CURRENT_TASK_INDEX] as int?) ?? 0;

    if (currentTaskIndex + 1 >= tasksCount) {
      sessionJson[_SESSION_IS_FINISHED] = true;
    } else {
      sessionJson[_SESSION_CURRENT_TASK_INDEX] = currentTaskIndex + 1;
    }

    return FirebaseFirestore.instance.collection(_SESSIONS_COLLECTION_NAME).doc(sessionId).update(sessionJson);
  }

  @override
  Future<void> flipTheCards(String sessionId, int taskIndex) async {
    final sessionDataModel = await _getSession(sessionId);
    final sessionJson = sessionDataModel.json;
    // ignore: avoid_dynamic_calls
    sessionJson[_SESSION_TASKS_FIELD][taskIndex][_TASK_ARE_CARDS_FLIPPED_FIELD] = true;
    // we want to update only tasks field, not entire session
    final tasksJson = <String, dynamic>{_SESSION_TASKS_FIELD: sessionJson[_SESSION_TASKS_FIELD]};

    return FirebaseFirestore.instance.collection(_SESSIONS_COLLECTION_NAME).doc(sessionId).update(tasksJson);
  }
}
