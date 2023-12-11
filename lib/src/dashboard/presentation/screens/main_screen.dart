import 'package:flutter/material.dart';

import 'ferris.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Ferris(),
    );
  }
}
