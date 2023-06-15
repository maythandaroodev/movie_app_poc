import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:movie_app_poc/constants/colors.dart';

import '../item_views/actor_detail_screen_item_views/actor_detail_screen_item_views.dart';

class ActorDetailScreen extends StatelessWidget {
  const ActorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(headerSliverBuilder:( BuildContext context,bool innerBoxIsScrolled)=>[
        SliverAppBar(
          pinned: true,
          backgroundColor: Colors.transparent,
          expandedHeight: 500,
          flexibleSpace: Stack(
            children: [
              FlexibleSpaceBar(
                title: Text('To Catch a Killer'),
                centerTitle: true,
                background: CachedNetworkImage(
                  imageUrl: 'https://image.tmdb.org/t/p/original/7lQ2hTGuIco0cQDuBEqacBUvoq3.jpg',
                  imageBuilder: (context,ImageProvider){
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ImageProvider,
                              fit: BoxFit.cover
                          )
                      ),
                    );
                  },
                  placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg'),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              // Positioned(
              //   top: 50,
              //   left: 20,
              //   child: GestureDetector(
              //     child: Container(
              //       width: 50,
              //       height: 50,
              //       decoration: BoxDecoration(
              //         color: kSecondaryColor,
              //         shape: BoxShape.circle
              //       ),
              //       child: Center(child: Icon(Icons.arrow_back,color: Colors.white,),),
              //     ),
              //   ),
              // )
            ],
          ),
        )
      ],
        body: InfoDetail(),
      ),

    );
  }
}
