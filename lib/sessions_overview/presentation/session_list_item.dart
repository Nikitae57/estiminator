import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/sessions_overview/presentation/models/session_overview_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SessionListItem extends StatelessWidget {
  const SessionListItem({
    Key? key,
    required SessionOverviewStateModel stateModel,
    required AppTheme theme,
    VoidCallback? onPressed,
  })  : _stateModel = stateModel,
        _theme = theme,
        _onPressed = onPressed,
        super(key: key);

  final SessionOverviewStateModel _stateModel;
  final AppTheme _theme;
  final VoidCallback? _onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: InkWell(
        onTap: _onPressed,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(_theme.defaultMargin),
              child: Column(
                children: <Widget>[
                  /// Creator name
                  Padding(
                    padding: EdgeInsets.only(bottom: _theme.defaultMargin),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: _theme.smallMargin),
                          child: const Icon(Icons.account_circle_rounded),
                        ),
                        Text(
                          _stateModel.creatorName,
                          textAlign: TextAlign.start,
                        ),
                        const Expanded(child: SizedBox()),
                        Text(_stateModel.isFinishedLabelText),
                        SizedBox(width: _theme.smallMargin),
                      ],
                    ),
                  ),

                  /// Title and task number
                  Row(
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
                        padding: EdgeInsets.only(left: _theme.defaultMargin),
                        child: Text(
                          _stateModel.numTasksText,
                          style: _theme.textTheme.bodyText1,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 1)
          ],
        ),
      ),
    );
  }
}
