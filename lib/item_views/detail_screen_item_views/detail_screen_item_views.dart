import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/dimens.dart';
import 'package:movie_app_poc/constants/strings.dart';
import 'package:movie_app_poc/widgets/biography_text_widget.dart';
import 'package:movie_app_poc/widgets/detail_title_widget.dart';
import 'package:movie_app_poc/widgets/movie_slider_widget.dart';
import 'package:movie_app_poc/widgets/production_widget.dart';

import '../../widgets/actor_icon_slider_widget.dart';

class MovieInfoDetail extends StatelessWidget {
  const MovieInfoDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  const [
        DetailTitleWidget(title: 'Story line', padding: EdgeInsets.only(right: kSP100x)),
        SizedBox(height: kSP15x,),
        BiographyTextWidget(),
        SizedBox(height: kSP15x,),
        DetailTitleWidget(title: 'Star Cast', padding: EdgeInsets.only(right: kSP100x)),
        SizedBox(height: kSP15x,),
        ActorIconSliderWidget(
            imagePath: 'https://image.tmdb.org/t/p/w500/iyt1tHUTGxxHfGdWbwNqxpbAvy6.jpg',
            gender: 'Actress',
            castName: 'Elizabeth', 
            padding: EdgeInsets.all(kSP5x),
        ),
        SizedBox(height: kSP20x,),
        DetailTitleWidget(title: 'Talent Squad', padding: EdgeInsets.only(right: kSP100x)),
        SizedBox(height: kSP15x,),
        ActorIconSliderWidget(
            imagePath: 'https://image.tmdb.org/t/p/w500/2v9FVVBUrrkW2m3QOcYkuhq9A6o.jpg',
            gender: 'Actor',
            castName: kGaryOldManText,
            padding: EdgeInsets.only(top: kSP5x,left: kSP5x,right: kSP45x,bottom: kSP5x),
        ),
        SizedBox(height: kSP15x,),
        DetailTitleWidget(title: 'Production Company', padding: EdgeInsets.only(right: kSP100x)),
        SizedBox(height: kSP15x,),
        ProductionWidget(
            imagePath: 'https://seeklogo.com/images/P/paramount-gulf-western-company-logo-7CA018C341-seeklogo.com.png',
            companyName: kParamountText
        ),
        SizedBox(height: kSP30x,),
        DetailTitleWidget(title: 'Recommended', padding: EdgeInsets.only(right: kSP100x)),
        SizedBox(height: kSP15x,),
        MovieSliderWidget(
            movieTitle: 'Penthouse',
            height: 230,
            imagePath: 'https://image.tmdb.org/t/p/original/33WzWRlmxjpW00zOGin6qrx6iqU.jpg',
            rate: 9.9,
            vote: 129084)

      ],
    );
  }
}
