import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/dimens.dart';

import '../../constants/colors.dart';

class FirstSlider extends StatelessWidget {
    const FirstSlider({super.key,});


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        initialPage: 0,
        viewportFraction: 0.8,
        enableInfiniteScroll: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.easeIn,
        enlargeCenterPage: true,
      ),
      items: [1,2,3,4,5].map((e) {
        return Stack(
            children: [
              Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: kSP10x),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: CachedNetworkImage(
                imageUrl:'https://image.tmdb.org/t/p/original/8DR3g1cF1mqpi6Jd5Yx1oOnLnqD.jpg',
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg'),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Icon(Icons.play_arrow_outlined,color: Colors.white,size: 30,),
                ),
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color.fromRGBO(17, 17, 18, 1),
                      ]
                  ),
                ),
              )
            ]
        );
      }).toList(),
    );
  }
}