import 'package:estiminator/core/persentation/app_theme.dart';
import 'package:estiminator/core/persentation/strings.dart';
import 'package:estiminator/core/persentation/widgets/platform_picker.dart';
import 'package:estiminator/create_session/presentation/model/estimation_scales_state_model.dart';
import 'package:estiminator/create_session/presentation/store/s_create_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class EstimationScaleChooserCard extends StatelessWidget {
  const EstimationScaleChooserCard(
      {Key? key, required CreateSessionS store, required AppTheme theme, required Strings strings})
      : _store = store,
        _theme = theme,
        _strings = strings,
        super(key: key);

  final CreateSessionS _store;
  final AppTheme _theme;
  final Strings _strings;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: _theme.defaultMargin),
        child: Column(
          children: [
            Text(
              _strings.get(SId.CREATE_SESSION_SCALES_LABEL),
              style: _theme.textTheme.headline5,
            ),
            SizedBox(height: _theme.defaultMargin),
            Observer(
              builder: (context) {
                return FutureBuilder(
                    future: _store.estimationScalesFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasError) {
                          return ColoredBox(
                            color: _theme.theme.primaryColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(_strings.get(
                                  SId.CREATE_SESSION_SCALES_FETCH_ERROR,
                                )),
                                SizedBox(width: _theme.defaultMargin),
                                TextButton(
                                  onPressed: _store.loadScales,
                                  child: Text(_strings.get(SId.CREATE_SESSION_RETRY)),
                                ),
                              ],
                            ),
                          );
                        } else {
                          /// Scale Data
                          final stateModel = snapshot.data as EstimationScalesStateModel?;
                          final scaleNames = stateModel!.scales.map((e) => e.name).toList();
                          return Observer(
                            builder: (_) {
                              return Column(
                                children: [
                                  PlatformPicker(
                                    items: scaleNames,
                                    onChanged: (scaleName) {
                                      if (scaleName != null) {
                                        _store.onScaleChange(scaleName);
                                      }
                                    },
                                    value: _store.scale.value?.name,
                                  ),
                                  SizedBox(height: _theme.defaultMargin),
                                  Wrap(
                                    direction: Axis.horizontal,
                                    children: _store.scale.value?.values
                                            .map((e) => Container(
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal: _theme.smallMargin,
                                                  ),
                                                  child: Chip(
                                                    backgroundColor: _theme.theme.buttonColor,
                                                    label: Text(e),
                                                  ),
                                                ))
                                            .toList() ??
                                        [],
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      } else {
                        /// Scales loading
                        return const CircularProgressIndicator.adaptive();
                      }

                      /// Scale Error
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
