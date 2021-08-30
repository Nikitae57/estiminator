import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/session/data/model/scale_domain_model_mapper.dart';
import 'package:estiminator/session/data/model/session_data_model.dart';
import 'package:estiminator/session/data/model/session_domain_model_mapper.dart';
import 'package:estiminator/session/domain/model/estimation_scale_domain_model.dart';
import 'package:estiminator/session/domain/model/session_domain_model.dart';
import 'package:estiminator/session/domain/session_repo.dart';

const String _SESSIONS_COLLECTION_NAME = 'sessions';
const String _SCALES_COLLECTION_NAME = 'scales';

const String _SESSION_SCALE_NAME_FIELD = 'scale_name';
const String _SCALE_NAME_FIELD = 'name';

class SessionFirebaseRepo implements ISessionRepo {
  SessionFirebaseRepo(this._sessionDomainModelMapper, this._estimationScaleDomainModelMapper);

  final SessionDomainModelMapper _sessionDomainModelMapper;
  final EstimationScaleDomainModelMapper _estimationScaleDomainModelMapper;

  /// Gets stream of session where [sessionId] is a document path
  @override
  Stream<SessionDomainModel> getSessionStream(String sessionId) {
    final firestore = FirebaseFirestore.instance;
    return firestore.collection(_SESSIONS_COLLECTION_NAME).doc(sessionId).snapshots().map((sessionDoc) {
      final sessionDataModel = SessionDataModel(id: sessionDoc.reference.path, json: sessionDoc.data()!);
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
}
