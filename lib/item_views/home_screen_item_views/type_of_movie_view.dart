import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          itemCount: movieType.length,
          itemBuilder: (context,int index) {
            if (index == 0) {
              return Container(
                width: 100,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text(movieType[index],style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),),
              );
            }return Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(movieType[index],style: const TextStyle(
                color: Colors.white,
                fontSize: 15
              ),),
            );
          })
      );
          }


}