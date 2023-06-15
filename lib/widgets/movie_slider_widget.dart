import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieSliderWidget extends StatelessWidget {
  const MovieSliderWidget({super.key,});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>buildMovieContainer(),
          separatorBuilder: (context,_)=>const SizedBox(width: 12,),
          itemCount: 10),
    );
  }
}


Widget buildMovieContainer(

    )=>Stack(
  children: [
    Container(
      // margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        // color: Colors.red
      ),
      child: CachedNetworkImage(
        imageUrl: 'https://image.tmdb.org/t/p/original/hc2ymDMfOCZ0JqrsMUBgL1GZXnz.jpg',
        imageBuilder: (context,imageProvider)=> Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
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
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
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
    Positioned(
      top: 110,
      left: 20,
      child: Text('Fast X',style: TextStyle(
        color: Colors.grey,
      ),
      ),
    ),
    Positioned(
      top: 140,
      left: 10,
      child: Row(
        children: [
          const SizedBox(width: 5,),
          const Icon(Icons.star_border_purple500_outlined,color:Colors.yellow,size: 25,),
          const SizedBox(width: 10,),
          Text('7.4',style: const TextStyle(
            color: Colors.grey,
          ),),
          const SizedBox(width: 25,),
          Text('13456',style: const TextStyle(color: Colors.grey),)
        ],
      ),
    ),
  ],
);



