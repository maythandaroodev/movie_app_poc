import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/dimens.dart';
import 'package:movie_app_poc/widgets/sliver_app_bar_widget.dart';

import '../constants/strings.dart';
import '../item_views/detail_screen_item_views/detail_screen_item_views.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBarWidget(
        imagePath: 'https://mir-s3-cdn-cf.behance.net/project_modules/hd/e9a102153356691.632de48582115.jpg',
        title: kTheGodFatherText,
        body: Padding(
          padding: EdgeInsets.all(kSP10x),
          child: MovieInfoDetail(),
        )
    );
  }
}
