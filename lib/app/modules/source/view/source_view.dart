import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/source_controller.dart';

class SourceView extends GetView<SourceController> {
  const SourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(50, (index) {
          return Center(
              child: SizedBox(
            height: MediaQuery.of(context).size.width / 2,
            width: MediaQuery.of(context).size.width / 2,
            child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all( Radius.circular(20.0))),
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
          ));
        }),
      ),
    );
  }
}
