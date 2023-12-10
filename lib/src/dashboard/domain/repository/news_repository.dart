import 'package:beautiful_diary_app/src/dashboard/domain/entity/news_entity.dart';

abstract class NewsRepository {
  Future<List<NewsEntity>> getRecentNews();
}
