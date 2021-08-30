import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/create_session/data/create_session_json_mapper.dart';
import 'package:estiminator/create_session/domain/models/create_session_domain_model.dart';
import 'package:estiminator/create_session/domain/service/create_session_service.dart';

const _SESSIONS_COLLECTION_NAME = 'sessions';

class FirebaseCreateSessionRepo implements ICreateSessionRepo {
  FirebaseCreateSessionRepo(this._jsonMapper);

  final CreateSessionJsonMapper _jsonMapper;

  @override
  Future<void> createSession(CreateSessionDomainModel createSessionDomainModel) async {
    final firestore = FirebaseFirestore.instance;
    final sessionJson = _jsonMapper.map(createSessionDomainModel);
    await firestore.collection(_SESSIONS_COLLECTION_NAME).add(sessionJson);
  }
}
