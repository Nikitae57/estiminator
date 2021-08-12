import 'package:estiminator/app/app_theme.dart';
import 'package:estiminator/app/sessions/sessions_overview/models/session_overview_state_model.dart';
import 'package:estiminator/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SessionListItem extends StatelessWidget {
  SessionListItem({
    Key? key,
    required SessionOverviewStateModel stateModel,
  })  : _stateModel = stateModel,
        super(key: key);

  final SessionOverviewStateModel _stateModel;
  final _theme = getIt<AppTheme>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(_theme.defaultmarginMargin),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: _theme.defaultmarginMargin),
                child: _creatorName(_stateModel.creatorName),
              ),
              _titleAndTasksNumber(_stateModel.title, _stateModel.numTasksText),
            ],
          ),
        ),
        const Divider()
      ],
    );
  }

  Widget _creatorName(String username) => Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: _theme.smallMargin),
            child: const Icon(Icons.account_circle_rounded),
          ),
          Text(
            _stateModel.creatorName,
            textAlign: TextAlign.start,
          ),
        ],
      );

  Widget _titleAndTasksNumber(String title, String numTasksText) => Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Expanded(
            child: Text(
              _stateModel.title,
              style: _theme.textTheme.headline4,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: _theme.defaultmarginMargin),
            child: Text(
              _stateModel.numTasksText,
              style: _theme.textTheme.bodyText1,
            ),
          )
        ],
      );
}
