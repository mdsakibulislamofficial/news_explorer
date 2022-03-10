import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_explorer/app/modules/source/model/source_model.dart';
import 'package:news_explorer/app/network/featch_source.dart';
import '../../../routes/app_route.dart';
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
                      Get.toNamed(Routes.SOURCEDETAILS);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: SizedBox(
                        height: MediaQuery.of(context).size.width / 2,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Card(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            elevation: 10.0,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Image.network(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/BBC_News_2019.svg/1200px-BBC_News_2019.svg.png",
                                      //height: 160,
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.width,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "BBC NEWS",
                                      style: GoogleFonts.roboto(),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      )),
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
              );
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}
