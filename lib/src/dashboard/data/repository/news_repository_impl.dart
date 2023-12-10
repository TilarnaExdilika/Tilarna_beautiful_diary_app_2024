import 'package:beautiful_diary_app/src/dashboard/data/api/news_api.dart';
import 'package:beautiful_diary_app/src/dashboard/domain/entity/news_entity.dart';
import 'package:beautiful_diary_app/src/dashboard/domain/repository/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsApi newsApi;
  final String apiKey;
  NewsRepositoryImpl({
    required this.newsApi,
    required this.apiKey,
  });

  @override
  Future<List<NewsEntity>> getRecentNews() {
    return newsApi.getRecentNews();
  }
}
