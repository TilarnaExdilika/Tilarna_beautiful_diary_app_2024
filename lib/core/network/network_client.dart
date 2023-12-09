import 'package:dio/dio.dart';
import 'package:beautiful_diary_app/core/shared/contants.dart';

class NetworkClient {
  final Dio _dio;
  final Constant constant;
  NetworkClient(this._dio, {required this.constant}) {
    _dio.options = BaseOptions(baseUrl: constant.apiBaseUrl);
  }

  get dio => _dio;
}
