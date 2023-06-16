import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';
import 'package:movie_app_poc/constants/dimens.dart';

import '../constants/strings.dart';
import '../item_views/home_screen_item_views/actor_slider.dart';
import '../item_views/home_screen_item_views/first_slider_view.dart';
import '../item_views/home_screen_item_views/movies_slider.dart';
import '../item_views/home_screen_item_views/popular_slider.dart';
import '../item_views/home_screen_item_views/search_item_view.dart';
import '../item_views/home_screen_item_views/type_of_movie_view.dart';
import '../item_views/home_screen_item_views/you_may_like_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchItemView(),
            const SizedBox(height: kSP10x,),
            TypesOfMovies(),
            const SizedBox(height: kSP20x,),
            const FirstSlider(),
            const SizedBox(height: kSP20x,),
            const MovieSlider(),
            const SizedBox(height: kSP20x,),
            const Padding(
              padding: EdgeInsets.only(right: kSP250x),
              child: Text(kYouMayLikeText,style: TextStyle(
                  color: Colors.white,
                  fontSize: kSP20x,
                  fontWeight: FontWeight.bold
              ),),),
            const SizedBox(height: kSP20x,),
            const YouMayLikeSlider(),
            const SizedBox(height: kSP30x,),
            const Padding(
              padding: EdgeInsets.only(right: kSP290x),
              child: Text(kPopularText,style: TextStyle(
                  color: kWhiteColor,
                  fontSize: kSP20x,
                  fontWeight: FontWeight.bold
              ),),
            ),
            const SizedBox(height: kSP20x,),
            const PopularSlider(),
            const SizedBox(height: kSP40x,),
            const ActorSlider()
          ],
        ),
      )
    );
  }
}
