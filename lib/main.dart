import 'package:anime_list/core/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'app.dart';

Future<void> main() async {
  await setupDi();
  runApp(const MyApp());
}
