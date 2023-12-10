part of 'main_bloc.dart';

abstract class MainNewsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MainNewsGetRecentNewsEvent extends MainNewsEvent {}
