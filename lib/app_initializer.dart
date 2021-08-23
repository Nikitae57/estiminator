import 'package:estiminator/core/data/firebase.dart';
import 'package:estiminator/di/di.dart';
import 'package:flutter/widgets.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDi();
  await initFirebase();
}
