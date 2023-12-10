import 'package:dio/dio.dart';
import 'package:beautiful_diary_app/src/dashboard/domain/entity/news_entity.dart';

class NewsApi {
  final Dio dio;
  final String apiKey;
  NewsApi({required this.dio, required this.apiKey});
  Future<List<NewsEntity>> getRecentNews() async {
    final res = await dio
        .get('/v2/everything?q=vietnamese&sortBy=publishedAt&apiKey=$apiKey');
    return List<Map<String, dynamic>>.from(res.data['articles'])
        .map((e) => NewsEntity.fromJson(e))
        .toList();
  }
}
