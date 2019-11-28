import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class NetUtils {
  static Dio _dio;
  static Map<String, String> _map = Map();
  static BaseOptions _options = BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 3000,
      baseUrl: "https://www.wanandroid.com/",);

  static Dio _dioInstance() {
    if (_dio == null) {
      _dio = Dio(_options);
    }
    //在这里添加公共参数
//    _map["username"] = "zgran";
    return _dio;
  }

  static get(String url,
      {Map<String, String> params, option, Function success, Function error}) async {
    Dio dio = _dioInstance();
    try {
      Response response = await dio.get(url, queryParameters: params, options: option);
      success(response.data);
    } catch (e) {
      error(e);
    }
  }

  static post(String url,
      {Map<String, String> params, option, Function success, Function error}) async {
    Dio dio = _dioInstance();
    _map.addAll(params);

    try {
//      String data = json.encode(_map).toString();
    //此处将参数传递过去
      Response response = await dio.post(url, queryParameters: _map, options: option);
      success(response.data);
    } catch (e) {
      error(e);
    }
  }
}
