import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:beautiful_diary_app/core/network/network_client.dart';
import 'package:beautiful_diary_app/core/shared/contants.dart';
import 'package:beautiful_diary_app/src/dashboard/data/api/news_api.dart';
import 'package:beautiful_diary_app/src/dashboard/data/repository/news_repository_impl.dart';
import 'package:beautiful_diary_app/src/dashboard/domain/repository/news_repository.dart';
import 'package:beautiful_diary_app/src/dashboard/domain/usecase/get_recent_news_usecase.dart';

import '../../src/dashboard/blocs/main_bloc.dart';

final serviceLocator = GetIt.instance;

setupServiceLocator() async {
  serviceLocator.registerFactory<Constant>(() => Constant());
  serviceLocator.registerFactory<Dio>(
    () => NetworkClient(Dio(), constant: serviceLocator()).dio,
  );

  // News
  serviceLocator.registerFactory<MainNewsBloc>(() => MainNewsBloc());
  serviceLocator.registerLazySingleton<NewsApi>(() => NewsApi(
      dio: serviceLocator(), apiKey: serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<NewsRepository>(() => NewsRepositoryImpl(
      newsApi: serviceLocator(), apiKey: serviceLocator<Constant>().apiKey));
  serviceLocator.registerLazySingleton<GetRecentNewsUseCase>(
      () => GetRecentNewsUseCase(serviceLocator()));
}
