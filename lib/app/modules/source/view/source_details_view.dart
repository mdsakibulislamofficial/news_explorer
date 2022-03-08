import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_explorer/app/core/widgets/custom_app_bar.dart';
import 'package:news_explorer/app/modules/source/controller/source_details_controller.dart';
import 'package:news_explorer/app/modules/source/widgets/source_card.dart';

class SourceDetailsView extends GetView<SourceDetailsController> {
  const SourceDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String date = '08-03-2022';
    String title =
        'Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC';
    return Scaffold(
      appBar: const CustomAppBar(appBarTitleText: 'Google News'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => SourceCard(
            title: title,
            date: date,
          ),
        ),
      ),
    );
  }
}
