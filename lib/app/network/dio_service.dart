import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioService {
  static String apikey = 'c968cdd426c8419d806177f4aba5228a';
  late Dio _dio;
 
  Future response(url) async {
    try {
      String allnewsUrl = '$url$apikey';
      Response response = await _dio.get(allnewsUrl);
      return response;
    } on DioError catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
