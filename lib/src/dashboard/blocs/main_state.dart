part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  @override
  List<Object> get props => [];
}

class MainInitialState extends MainState {}

class MainLoadingState extends MainState {}

class MainGetRecentNewsSuccessState extends MainState {
  final List<NewsEntity> news;
  MainGetRecentNewsSuccessState(this.news);

  @override
  List<Object> get props => [news];
}

class MainErrorState extends MainState {
  final String message;
  MainErrorState(this.message);

  @override
  List<Object> get props => [message];
}
