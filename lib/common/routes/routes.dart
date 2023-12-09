import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:beautiful_diary_app/core/di/service_locator.dart';

import '../../src/news/presentation/bloc/main_news_bloc.dart';
import '../../src/news/presentation/screens/main_news_screen.dart';

class AppRouter {
  GoRouter generateRoute() {
    return GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocProvider.value(
            value: serviceLocator<MainNewsBloc>()
              ..add(MainNewsGetRecentNewsEvent()),
            child: const MainNewsScreen(),
          );
        },
      )
    ]);
  }
}
