import 'package:estiminator/data/sessions/overview/session_overview_data_model.dart';
import 'package:estiminator/data/sessions/overview/sessions_overview_data_model.dart';
import 'package:estiminator/data/sessions/sessions_overview_domain_model_mapper.dart';
import 'package:estiminator/domain/sessions/session_overview_domain_model.dart';
import 'package:estiminator/domain/sessions/sessions_overview_domain_model.dart';
import 'package:flutter_test/flutter_test.dart';

const _TITLE = 'Title';
const _IS_FINISHED = true;
const _NUM_TASKS = 3;
const _CREATOR_UID = 'uid';

final _dataModel = SessionsOverviewDataModel(sessions: [
  SessionOverviewDataModel(
    title: _TITLE,
    isFinished: _IS_FINISHED,
    numTasks: _NUM_TASKS,
    creatorUid: _CREATOR_UID,
  )
]);

final _domainModel = SessionsOverviewDomainModel(sessions: [
  SessionOverviewDomainModel(
    title: _TITLE,
    isFinished: _IS_FINISHED,
    numTasks: _NUM_TASKS,
    creatorUid: _CREATOR_UID,
  ),
]);

void main() {
  test('''
  GIVEN mapper
  WHEN it's called
  THEN it should return correctly mapped 
  ''', () {
    final mapper = SessionsOverviewDomainModelMapper();

    expect(mapper.map(_dataModel), _domainModel);
  });
}
