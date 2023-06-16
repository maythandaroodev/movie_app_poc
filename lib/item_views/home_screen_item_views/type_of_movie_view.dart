import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/dimens.dart';

import '../../constants/colors.dart';

class TypesOfMovies extends StatelessWidget {
  TypesOfMovies({super.key,});
  final List<String> movieType = <String>[
    "Adventure","Fantasy", "Animation", "Drama","Horror","Action","Comedy",
    "History","Western","Trailer","Documentary","Science Fiction","Mystery",
    "Music","Romance","Family","War","TV Movie"
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          padding: const EdgeInsets.all(kSP10x),
          scrollDirection: Axis.horizontal,
          itemCount: movieType.length,
          itemBuilder: (context,int index) {
            if (index == 0) {
              return Container(
                width: 100,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: kSP10x),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text(movieType[index],style: const TextStyle(
                  color: Colors.white,
                  fontSize: kFS15x
              ),),
              );
            }return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kSP10x),
              child: Text(movieType[index],style: const TextStyle(
                color: Colors.white,
                fontSize: kFS15x
              ),),
            );
          })
      );
          }


}