import 'package:estiminator/app/sessions/models/sessions_bundle_model.dart';
import 'package:estiminator/app/sessions/sessions_store.dart';
import 'package:estiminator/di.dart';
import 'package:flutter/material.dart';

class SessionsPage extends StatelessWidget {
  SessionsPage({
    Key? key,
    required SessionsBundleModel bundle,
  }) : super(key: key) {
    _store.setUsername(bundle.userName);
  }

  static const route = '/sessions';

  final _store = getIt<SessionsStore>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
