import 'package:flutter/material.dart';
import 'package:movie_app_poc/widgets/movie_slider_widget.dart';

class PopularSlider extends StatelessWidget {
  const PopularSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MovieSliderWidget(
        movieTitle: 'The fallen idol',
        height: 230,
        imagePath: 'https://image.tmdb.org/t/p/original/sCcjmsYVgh0urTbLqQgEeskkmPt.jpg',
        rate: 8.9,
        vote: 4321);
  }
}
