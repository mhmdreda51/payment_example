import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static const String baseUrl = "https://accept.paymob.com/api/";
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );
  }

//===============================================================
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      "Content-Type": "application/json",
    };
    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

//===============================================================
  // static Future<Response> getDataByToken({
  //   required String url,
  //   Map<String, dynamic>? query,
  // }) async {
  //   dio!.options.headers = {
  //     "Accept": "application/json",
  //     if(CacheHelper.isLogged)
  //       'Authorization': 'Bearer ${CacheHelper.getUserToken}',
  //   };
  //   return await dio!.get(
  //     url,
  //     queryParameters: query,
  //   );
  // }

//===============================================================
  static Future<Response> postData({
    required String url,
    dynamic data,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      "Content-Type": "application/json",
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
//===============================================================

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {
      "Accept": "application/json",
    };
    return dio!.put(
      url,
      queryParameters: query,
      data: data,
    );
  }
}