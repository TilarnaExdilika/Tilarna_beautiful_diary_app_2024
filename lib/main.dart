import 'package:flutter/material.dart';
import 'package:beautiful_diary_app/core/di/service_locator.dart';

import 'app/config/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const MainApp());
}
