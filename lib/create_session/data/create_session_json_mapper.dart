import 'package:estiminator/core/domain/mapper.dart';
import 'package:estiminator/create_session/domain/models/create_session_domain_model.dart';
import 'package:injectable/injectable.dart';

const _CREATOR_UID_FIELD = 'creator_uid';
const _TITLE_FIELD = 'title';
const _CURRENT_TASK_INDEX_FIELD = 'current_task_index';
const _IS_FINISHED_FIELD = 'is_finished';
const _SCALE_FIELD = 'scale_name';
const _TASKS_FIELD = 'tasks';

const _DESCRIPTION_FIELD = 'description';
const _ESTIMATIONS_FIELD = 'estimations';
const _FINAL_ESTIMATION_FIELD = 'final_estimation';
const _JIRA_LINK_FIELD = 'jira_link';
const _ARE_CARDS_FLIPPED_FIELD = 'are_cards_flipped';

@injectable
class CreateSessionJsonMapper extends Mapper<CreateSessionDomainModel, Map<String, dynamic>> {
  @override
  Map<String, dynamic> map(CreateSessionDomainModel input) {
    return <String, dynamic>{
      _CREATOR_UID_FIELD: input.creatorUid,
      _TITLE_FIELD: input.sessionTitle,
      _CURRENT_TASK_INDEX_FIELD: 0,
      _IS_FINISHED_FIELD: false,
      _SCALE_FIELD: input.scaleName,
      _TASKS_FIELD: input.tasks.map((task) {
        return <String, dynamic>{
          _ARE_CARDS_FLIPPED_FIELD: false,
          _DESCRIPTION_FIELD: task.description,
          _JIRA_LINK_FIELD: task.jiraLink,
          _TITLE_FIELD: task.title,
          _ESTIMATIONS_FIELD: <String>[],
          _FINAL_ESTIMATION_FIELD: null
        };
      }).toList()
    };
  }
}
