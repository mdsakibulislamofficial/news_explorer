import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_explorer/app/core/widgets/news_details.dart';
import 'package:news_explorer/app/modules/home/controller/home_controller.dart';
import 'package:news_explorer/app/modules/home/model/all_news_model.dart';
import 'package:news_explorer/app/modules/home/widgets/slider_widget.dart';
import 'package:news_explorer/app/modules/home/widgets/toggle_menu_widget.dart';

import 'package:news_explorer/app/network/featch_all_news.dart';

import '../../../core/widgets/news_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SliderWidget(),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ToggleMenuWidget(
                index: 0,
                title: "All News",
              ),
              ToggleMenuWidget(
                index: 1,
                title: "Top News",
              ),
              ToggleMenuWidget(
                index: 2,
                title: "Top HeadLines",
              ),
            ],
          ),
        ),
        FutureBuilder<List<Article>?>(
          future: FeatchAllNews().featchAllNews(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.to(NewsDetails(
                      title: snapshot.data![index].title.toString(),
                      details: snapshot.data![index].description.toString(),
                      image: snapshot.data![index].urlToImage.toString(),
                    ));
                  },
                  child: NewsCard(
                    title: snapshot.data![index].title.toString(),
                    subTitle: snapshot.data![index].publishedAt.toString(),
                    image: snapshot.data![index].urlToImage.toString(),
                  ),
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
        ),
      ],
    );
  }
}
