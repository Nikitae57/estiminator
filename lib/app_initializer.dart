import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:estiminator/di.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDi();
  await _initFirebase();
}

Future<void> _initFirebase() async {
  await Firebase.initializeApp();
  if (kDebugMode) {
    FirebaseFirestore.instance.settings = const Settings(
      host: 'localhost:8080',
      sslEnabled: false,
      persistenceEnabled: false,
    );
  }
}
