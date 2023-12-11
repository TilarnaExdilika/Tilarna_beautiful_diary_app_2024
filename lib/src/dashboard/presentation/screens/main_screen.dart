import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/main_bloc.dart';
import 'ferris.dart';
import 'notch_bottom_wrapper.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is MainLoadingState) {
          return Center(
            child: Ferris(),
          );
        }
        if (state is MainErrorState) {
          return Center(
            child: Text(
              state.message,
              textAlign: TextAlign.center,
            ),
          );
        }
        if (state is MainGetRecentNewsSuccessState) {
          return const Scaffold(
            body: AnimatedNotchBottomBarWrapper(),
          );
        }
        return const SizedBox();
      },
    );
  }
}
