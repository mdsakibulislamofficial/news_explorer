import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:news_explorer/app/core/widgets/custom_app_bar.dart';

import '../values/app_style.dart';

class NewsDetails extends StatelessWidget {
  final String? details;
  final String? title;
  final String? image;
  const NewsDetails({
    Key? key,
    this.details,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        appBarTitleText: "News Details",
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 170,
            child: ListView(
              children: [
                Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    image.toString(),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    title.toString(),
                    textAlign: TextAlign.justify,
                    style: subtitleTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Date : 08-04-2022',
                    style: twelveFontSizeStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    details.toString(),
                    textAlign: TextAlign.justify,
                    style: detailsTextStyle,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Read more',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
