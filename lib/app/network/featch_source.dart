import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_explorer/app/modules/source/model/source_model.dart';

class FeatchSource {
  Dio dio = Dio();

  static String apikey = 'c968cdd426c8419d806177f4aba5228a';
  String sourceUrl =
      "https://newsapi.org/v2/top-headlines/sources?apiKey=$apikey";
  Future<List<Source>?> featchSource() async {
    try {
      Response response = await dio.get(sourceUrl);
      NewsSource sourceResponse = NewsSource.fromJson(response.data);
      return sourceResponse.sources;
    } on DioError catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
