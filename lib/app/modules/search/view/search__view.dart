import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_explorer/app/core/values/app_colors.dart';
import '../controller/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchController searchController = Get.put(SearchController());

    String? searchQuery;
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          SizedBox(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.colorPrimary),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        searchQuery = value;
                      },
                      decoration: const InputDecoration(
                        hintText: "Search...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      searchController.searchResult(searchQuery);
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: AppColors.colorPrimary,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Obx(
              () => searchController.isloading.value == true
                  ? Container()
                  : ListView.builder(
                      itemCount: searchController.searchNewsList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ListTile(
                            title: Text(
                              searchController.searchNewsList[index].title
                                  .toString(),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          )
        ],
      ),
    );
  }
}
