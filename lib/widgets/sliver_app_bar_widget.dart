import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/dimens.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key, required this.imagePath, required this.title, required this.body});
  final String imagePath;
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: NestedScrollView(headerSliverBuilder:( BuildContext context,bool innerBoxIsScrolled)=>[
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: true,
          backgroundColor: kPrimaryColor,
          expandedHeight: kSilverHeight,
          flexibleSpace: FlexibleSpaceBar(
            title:  Text(title),
            centerTitle: true,
            background: Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: imagePath,
                  imageBuilder: (context,imageProvider){
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover
                          )
                      ),
                    );
                  },
                  placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg'),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
                Positioned(
                  top: kSP50x,
                  left: kSP20x,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: kBackBtnWidth,
                      height: kBackBtnHeight,
                      decoration: const BoxDecoration(
                          color: kSecondaryColor,
                          shape: BoxShape.circle
                      ),
                      child: const Center(child: Icon(Icons.arrow_back,color: kWhiteColor,),),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
        body: body,
      ),

    );
  }
}
