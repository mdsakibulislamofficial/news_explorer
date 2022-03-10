import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:news_explorer/app/modules/source/model/source_model.dart';
import 'package:news_explorer/app/modules/source/widgets/source_card.dart';
import 'package:news_explorer/app/network/featch_source.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/source_controller.dart';

class SourceView extends GetView<SourceController> {
  const SourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Source>?>(
          future: FeatchSource().featchSource(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      launch(snapshot.data![index].url.toString());
                    },
                    child: SourceCard(
                      title: snapshot.data![index].description.toString(),
                      name: snapshot.data![index].name.toString(),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
