import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder:( BuildContext context,bool innerBoxIsScrolled)=>[
      SliverAppBar(
        pinned: true,
        backgroundColor: Colors.transparent,
        expandedHeight: 500,
        flexibleSpace: Stack(
          children: [
            FlexibleSpaceBar(
              title: Text(title),
              centerTitle: true,
              background: CachedNetworkImage(
                imageUrl: imagePath,
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
    body: Container(),
    )
    );
  }
}
