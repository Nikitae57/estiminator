import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:injectable/injectable.dart';

import '../di.dart';
import 'app_theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _theme = getIt<AppTheme>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estiminator',
      theme: _theme.theme,
    ).modular();
  }
}
