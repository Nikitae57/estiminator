import 'package:estiminator/data/sessions/session_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessions_data_model.freezed.dart';
part 'sessions_data_model.g.dart';

@freezed
class SessionsDataModel with _$SessionsDataModel {
  factory SessionsDataModel({
    required List<SessionDataModel> sessions,
  }) = _SessionDataModel;

  factory SessionsDataModel.fromJson(Map<String, dynamic> map) =>
      _$SessionsDataModelFromJson(map);

  SessionsDataModel._();
}
