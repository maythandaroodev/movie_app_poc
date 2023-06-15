import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';

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
      body: ListView.builder(
        itemCount: 1,
          itemBuilder: (context,index){
          return Column(
            children: [
              const SearchItemView(),
              const SizedBox(height: 10,),
              TypesOfMovies(),
              const SizedBox(height: 20,),
              const FirstSlider(),
              const SizedBox(height: 20,),
              const MovieSlider(),
              const SizedBox(height: 20,),
              const YouMayLikeSlider(),
              const SizedBox(height: 30,),
              const PopularSlider(),
              const SizedBox(height: 40,),
              const ActorSlider()
            ],
          );
          }
      ),
    );
  }
}
