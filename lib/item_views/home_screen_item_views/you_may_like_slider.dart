import 'package:flutter/material.dart';
import 'package:movie_app_poc/widgets/movie_slider_widget.dart';

class YouMayLikeSlider extends StatelessWidget {
  const YouMayLikeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MovieSliderWidget(
        movieTitle: 'Botuto',
        height: 230,
        imagePath: 'https://image.tmdb.org/t/p/original/9GB2iXCPVP6bgyQXXPUchX8CD7p.jpg',
        rate: 6.5,
        vote: 24572);
  }
}
