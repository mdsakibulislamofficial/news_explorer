import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_explorer/app/modules/home/model/all_news_model.dart';
import 'package:news_explorer/app/network/featch_all_news.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (context, index, realIndex) {
          return FutureBuilder<List<Article>?>(
              future: FeatchAllNews().featchAllNews(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return sliderImage(
                    context,
                    snapshot.data![index].urlToImage,
                    snapshot.data![index].title,
                  );
                } else {
                  return sliderImage(
                    context,
                    '',
                    '',
                  );
                }
              });
        },
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          viewportFraction: 1,
          autoPlayInterval: const Duration(seconds: 4),
        ),
      ),
    );
  }

  Widget sliderImage(context, imageUrl, title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.2),
            ),
            width: MediaQuery.of(context).size.width - 40,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
