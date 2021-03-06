import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/core/persentation/widgets/bottom_button.dart';
import 'package:estiminator/create_session/presentation/store/s_create_session.dart';
import 'package:estiminator/create_session/presentation/wdigets/estimation_scale_chooser_card.dart';
import 'package:estiminator/create_session/presentation/wdigets/task_creation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CreateSessionPageContent extends StatelessWidget {
  const CreateSessionPageContent({
    Key? key,
    required AppTheme theme,
    required Strings strings,
    required CreateSessionS store,
  })  : _theme = theme,
        _strings = strings,
        _store = store,
        super(key: key);

  final AppTheme _theme;
  final Strings _strings;
  final CreateSessionS _store;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(_theme.defaultMargin),
          child: Column(
            children: [
              /// Session title
              Observer(
                builder: (context) {
                  return TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: _strings.get(SId.CREATE_SESSION_TITLE_HINT),
                      errorText: _store.sessionTitle.isValid == false ? 'Enter a session title' : null,
                    ),
                    onChanged: _store.sessionTitle.set,
                  );
                },
              ),

              /// Estimation scale
              Container(
                margin: EdgeInsets.only(top: _theme.defaultMargin, bottom: _theme.smallMargin),
                width: double.infinity,
                child: EstimationScaleChooserCard(
                  store: _store,
                  theme: _theme,
                  strings: _strings,
                ),
              ),

              /// Tasks creation
              Container(
                margin: EdgeInsets.only(top: _theme.defaultMargin, bottom: _theme.smallMargin),
                width: double.infinity,
                child: TaskCreationCard(
                  theme: _theme,
                  store: _store,
                  strings: _strings,
                ),
              ),
              SizedBox(height: _theme.defaultMargin),

              /// Create session button
              Observer(builder: (context) {
                return AnimatedOpacity(
                  opacity: _store.tasks.isNotEmpty && _store.sessionTitle.value?.isNotEmpty == true ? 1.0 : 0.0,
                  duration: _theme.fadeAnimationDuration,
                  child: RoundedButton(
                    borderRadius: _theme.defaultBorderRadius,
                    size: Size(double.infinity, _theme.bottomButtonHeight),
                    onPressed: () {
                      _store.createSession();
                    },
                    child: Text(
                      _strings.get(SId.CREATE_SESSION_DONE_BUTTON_TEXT),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
