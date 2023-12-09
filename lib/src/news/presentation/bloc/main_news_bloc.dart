import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:beautiful_diary_app/core/di/service_locator.dart';
import 'package:beautiful_diary_app/src/news/domain/entity/news_entity.dart';
import 'package:beautiful_diary_app/src/news/domain/usecase/get_recent_news_usecase.dart';

part 'main_news_event.dart';
part 'main_news_state.dart';

class MainNewsBloc extends Bloc<MainNewsEvent, MainNewsState> {
  MainNewsBloc() : super(MainNewsInitialState()) {
    on<MainNewsGetRecentNewsEvent>(mainNewsGetRecentNewsEvent);
  }

  FutureOr<void> mainNewsGetRecentNewsEvent(
      MainNewsGetRecentNewsEvent event, Emitter<MainNewsState> emit) async {
    try {
      emit(MainNewsLoadingState());
      List<NewsEntity> news =
          await serviceLocator<GetRecentNewsUseCase>().call();
      emit(MainNewsGetRecentNewsSuccessState(news));
    } catch (e) {
      emit(MainNewsErrorState("Something Went Wrong"));
    }
  }
}
