import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_explorer/app/core/values/app_colors.dart';
import 'package:news_explorer/app/modules/home/controller/home_controller.dart';
import 'package:news_explorer/app/modules/home/widgets/slider_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SliderWidget(),
      ],
    );
  }
}
