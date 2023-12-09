import 'package:beautiful_diary_app/src/news/domain/entity/news_entity.dart';

abstract class NewsRepository {
  Future<List<NewsEntity>> getRecentNews();
}
