import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:beautiful_diary_app/core/di/service_locator.dart';
import 'package:page_transition/page_transition.dart';

import '../../src/dashboard/blocs/main_bloc.dart';
import '../../src/dashboard/presentation/screens/main_screen.dart';
import '../../src/dashboard/presentation/screens/notch_bottom_wrapper.dart';

class AppRouter {
  GoRouter generateRoute() {
    return GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocProvider.value(
            value: serviceLocator<MainBloc>()..add(MainGetRecentEvent()),
            child: const MainScreen(),
          );
        },
      ),
      GoRoute(
        path: '/notchbar',
        builder: (context, state) {
          Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.leftToRight,
                child: const AnimatedNotchBottomBarWrapper()),
          );
          return Container();
        },
      ),
    ]);
  }
}
