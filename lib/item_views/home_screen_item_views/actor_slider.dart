import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/dimens.dart';
import 'package:movie_app_poc/constants/strings.dart';

import '../../screens/actor_detail_screen.dart';


class ActorSlider extends StatelessWidget {
  const ActorSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        initialPage: 0,
        viewportFraction: 0.8,
        enableInfiniteScroll: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayCurve: Curves.easeIn,
        enlargeCenterPage: true,
      ),
      items: [1,2,3,4,5,6,7,8,9,10].map((e) {
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ActorDetailScreen()));
          },
          child: Stack(
              children: [Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: kSP10x),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: CachedNetworkImage(
                  imageUrl:"https://image.tmdb.org/t/p/w500/2v9FVVBUrrkW2m3QOcYkuhq9A6o.jpg",
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Color.fromRGBO(17, 17, 18, 1),
                        ]
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: kSP10x),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(kGaryOldManText,style: TextStyle(
                      color: Colors.white,
                      fontSize: kFS18x,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ]
          ),
        );
      }).toList(),
    );
  }
}
