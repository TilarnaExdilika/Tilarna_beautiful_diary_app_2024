import 'package:flutter/material.dart';

import '../../common/routes/routes.dart';
import '../../common/themes/themes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.themeData,
      routerConfig: AppRouter().generateRoute(),
    );
  }
}
