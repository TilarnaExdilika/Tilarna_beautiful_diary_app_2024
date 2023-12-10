import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:beautiful_diary_app/core/di/service_locator.dart';
import 'package:beautiful_diary_app/src/dashboard/domain/entity/news_entity.dart';
import 'package:beautiful_diary_app/src/dashboard/domain/usecase/get_recent_news_usecase.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitialState()) {
    on<MainGetRecentEvent>(mainNewsGetRecentNewsEvent);
  }

  FutureOr<void> mainNewsGetRecentNewsEvent(
      MainGetRecentEvent event, Emitter<MainState> emit) async {
    try {
      emit(MainLoadingState());
      List<NewsEntity> news =
          await serviceLocator<GetRecentNewsUseCase>().call();
      emit(MainGetRecentNewsSuccessState(news));
    } catch (e) {
      emit(MainErrorState("Something Went Wrong"));
    }
  }
}
