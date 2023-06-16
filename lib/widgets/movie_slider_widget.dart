import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';

import '../constants/dimens.dart';
import '../screens/detail_screen.dart';

class MovieSliderWidget extends StatelessWidget {
  final String movieTitle;
  final String imagePath;
  final double height;
  final double rate;
  final double vote;

  const MovieSliderWidget({super.key, required this.movieTitle, required this.height, required this.imagePath, required this.rate, required this.vote});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailScreen()));
          },
          child: SizedBox(
            height: height,
            child: ListView.separated(
              separatorBuilder: (context,_)=>const SizedBox(width: kSP15x,),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Stack(
                    //alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        // margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                        width: kMovieSliderBoxWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kMovieBoxRadius),
                          // color: Colors.red
                        ),
                        child: CachedNetworkImage(
                          imageUrl: imagePath,
                          imageBuilder: (context,imageProvider)=> Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(kMovieBoxRadius),
                                image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          placeholder: (context,url)=> Image.asset('images/tmdb_place_holder.jpg'),
                          errorWidget: (context,url,error)=> const Icon(Icons.error),
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                        width: kMovieSliderBoxWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kMovieBoxRadius),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Color.fromRGBO(17, 17, 18, 1),
                              ]
                          ),
                        ),
                      ),
                      SizedBox(
                        width: kMovieSliderBoxWidth,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: kSP15x,vertical: kSP5x),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(movieTitle,style: const TextStyle(
                                fontSize: kFS18x,
                                color: kWhiteColor,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              const SizedBox(height: kSP10x,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //const SizedBox(width: 5,),
                                  Row(
                                    children: [
                                      const Icon(Icons.star_border_purple500_outlined,color:Colors.yellow,size: 25,),
                                      const SizedBox(width: kSP5x,),
                                      Text(rate.toString(),style: const TextStyle(
                                        color: kGreyColor,
                                      ),),
                                    ],
                                  ),
                                  //Spacer(),
                                  //const SizedBox(width: 25,),
                                  //Spacer(),
                                  Text(vote.toString(),style: const TextStyle(color: kGreyColor),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  );
                }
            ),
          ),
        ),
      ],
    );
  }
}



