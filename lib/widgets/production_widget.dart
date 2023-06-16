import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/dimens.dart';

class ProductionWidget extends StatelessWidget {
  final String imagePath;
  final String companyName;
  const ProductionWidget({super.key, required this.imagePath, required this.companyName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.separated(
        separatorBuilder: (context,_)=>const SizedBox(width: kSP10x,),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
          itemBuilder: (context,index)=>Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CachedNetworkImage(
                      imageUrl:imagePath,
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      placeholder: (context, url) => CircleAvatar(child: Image.asset('images/tmdb_place_holder.jpg')),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                  const SizedBox(height: kSP10x,),
                  Text(companyName,style: const TextStyle(
                      color: Colors.grey
                  ),)
                ],
              ),
            ],
          ),
      ),
    );
  }
}
