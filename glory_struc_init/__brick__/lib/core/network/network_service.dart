import 'package:dio/dio.dart';
import 'package:dots/core/network/api_urls.dart';
import 'package:dots/core/utils/logger_util.dart';

abstract class NetworkService {
  get(
    String path, {
    Map<String, dynamic> queryParameters,
    bool isAuth = false,
  });
  post(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool isAuth,
    Map<String, dynamic> data,
  });
}

class NetworkServiceImpl extends NetworkService {
  NetworkServiceImpl(this.dio);
  final Dio dio;

  var headers = {ApiUrls.keyHeaderToken: true};
  @override
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool isAuth = false,
    Map<String, dynamic> header = const {},
  }) async {
    Map<String, dynamic> headerData = {...header};
    if (isAuth) {
      headerData[ApiUrls.keyHeaderToken] = true;
    }
    return dio.get(
      path,
      options: Options(headers: headerData),
      queryParameters: queryParameters,
    );
  }

  @override
  Future<Response> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    bool isAuth = false,
    Map<String, dynamic>? data,
    Map<String, dynamic> header = const {},
  }) {
    Map<String, dynamic> headerData = {...header};
    if (!isAuth) {
      headerData[ApiUrls.keyHeaderToken] = true;
    }
    headerData.logI();
    data!.logI();
    return dio.post(
      path,
      options: Options(headers: headerData),
      data: data,
      queryParameters: queryParameters,
    );
  }
}
