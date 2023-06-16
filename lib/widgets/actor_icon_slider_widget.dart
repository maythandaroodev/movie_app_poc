import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';
import 'package:movie_app_poc/constants/dimens.dart';

class ActorIconSliderWidget extends StatelessWidget {
  final String imagePath;
  final String gender;
  final String castName;
  final EdgeInsetsGeometry padding;
  const ActorIconSliderWidget({super.key, required this.imagePath, required this.gender, required this.castName, required this.padding});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kSP50x,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          separatorBuilder: (context,_)=>const SizedBox(width: kSP10x,),
          itemCount: 3,
        itemBuilder: (context,index)=>Row(
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CachedNetworkImage(
                imageUrl: imagePath,
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
            const SizedBox(width: kSP10x,),
            Column(
              children: [
                Padding(
                  padding: padding,
                  child: Text(gender,style: const TextStyle(
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Text(castName,style: const TextStyle(
                  color: kGreyColor
                ),)

              ],
            )
          ],
        ),
      ),
    );
  }
}
