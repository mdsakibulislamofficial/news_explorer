import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_explorer/app/modules/home/model/all_news_model.dart';

class Search {
  late Dio dio = Dio();

  static String apikey = 'c968cdd426c8419d806177f4aba5228a';
  String sourceUrl =
      "https://newsapi.org/v2/everything?q=global&apiKey=$apikey";
  Future<List<Article>?> search(String query) async {
    String sourceUrl =
        "https://newsapi.org/v2/everything?q=$query&apiKey=$apikey";
    try {
      Response response = await dio.get(sourceUrl);
      AllNews allNews = AllNews.fromJson(response.data);
      debugPrint(allNews.articles.toString());
      return allNews.articles;
    } on DioError catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
