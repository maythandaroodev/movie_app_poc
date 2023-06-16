import 'package:flutter/material.dart';

import 'package:movie_app_poc/widgets/sliver_app_bar_widget.dart';
import '../constants/strings.dart';
import '../item_views/actor_detail_screen_item_views/actor_detail_screen_item_views.dart';

class ActorDetailScreen extends StatelessWidget {
  const ActorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBarWidget(
        imagePath: 'https://image.tmdb.org/t/p/w500/2v9FVVBUrrkW2m3QOcYkuhq9A6o.jpg',
        title: kGaryOldManText,
        body: ActorInfoDetail()
    );
  }
}
