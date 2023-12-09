import 'package:beautiful_diary_app/src/news/domain/entity/news_entity.dart';
import 'package:beautiful_diary_app/src/news/domain/repository/news_repository.dart';

class GetRecentNewsUseCase {
  final NewsRepository newsRepositoryImpl;
  GetRecentNewsUseCase(this.newsRepositoryImpl);
  Future<List<NewsEntity>> call() async {
    return newsRepositoryImpl.getRecentNews();
  }
}
