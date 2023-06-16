import 'package:flutter/material.dart';
import 'package:movie_app_poc/widgets/movie_slider_widget.dart';


class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key,});

  @override
  Widget build(BuildContext context) {
    return  const MovieSliderWidget(
        movieTitle: 'Fast X',
        height: 200,
        imagePath: 'https://image.tmdb.org/t/p/original/8hE5QQz6lqHdr0P6hpypR1lsoFS.jpg',
        rate: 7.4,
        vote: 13456);
  }
}
