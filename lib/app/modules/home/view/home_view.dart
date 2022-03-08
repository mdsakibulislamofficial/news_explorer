import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_explorer/app/modules/home/controller/home_controller.dart';
import 'package:news_explorer/app/modules/home/widgets/slider_widget.dart';
import 'package:news_explorer/app/modules/home/widgets/toggle_menu_widget.dart';

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
            children: [
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
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 100,
          itemBuilder: (context, index) => NewsCard(),
        )
      ],
    );
  }
}
