import 'package:estiminator/app/app.dart';
import 'package:estiminator/app/app_module.dart';
import 'package:estiminator/app_initializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

Future<void> main() async {
  await initializeApp();
  runApp(ModularApp(module: AppModule(), child: App()));
}
