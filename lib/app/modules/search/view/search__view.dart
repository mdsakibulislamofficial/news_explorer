import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_explorer/app/core/values/app_colors.dart';
import '../controller/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search...",
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.colorPrimary,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(35.0),
          ),
        ),
      ),
    );
  }
}
