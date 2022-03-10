import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_explorer/app/modules/home/model/top_headline_model.dart';

class FeatchTopNews {
  late Dio dio = Dio();
  static String apikey = 'c968cdd426c8419d806177f4aba5228a';
  String sourceUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=$apikey";

  Future<List<Article>?> featchTopNews() async {
    try {
      Response response = await dio.get(sourceUrl);
      TopHeadline topHeadline = TopHeadline.fromJson(response.data);
      return topHeadline.articles;
    } on DioError catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
